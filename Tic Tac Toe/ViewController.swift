//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by mohammed alhazmi on 7/2/15.
//  Copyright © 2015 mohammed alhazmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gridLabel0: GridLabel!
    @IBOutlet weak var gridLabel1: GridLabel!
    @IBOutlet weak var gridLabel2: GridLabel!
    @IBOutlet weak var gridLabel3: GridLabel!
    @IBOutlet weak var gridLabel4: GridLabel!
    @IBOutlet weak var gridLabel5: GridLabel!
    @IBOutlet weak var gridLabel6: GridLabel!
    @IBOutlet weak var gridLabel7: GridLabel!
    @IBOutlet weak var gridLabel8: GridLabel!
    @IBOutlet weak var backgroundView: UIView!
    var labelArray :[GridLabel]!
    var xTurn = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelArray = [gridLabel0, gridLabel1, gridLabel2, gridLabel3, gridLabel4, gridLabel5, gridLabel6, gridLabel7, gridLabel8]
        
        //var a = GridLabel()
        //print(a.canTap)
    }
    @IBAction func onTappedChangeLabel(sender: UITapGestureRecognizer) {
        for label in labelArray {
            if label.canTap {
                if CGRectContainsPoint(label.frame, sender.locationInView(backgroundView)){
                    if xTurn {label.text = "X"}
                    else {label.text = "O"}
                    xTurn = !xTurn
                    label.canTap = false
                checkForWinner()
                }
                }
            }
          }

    func checkForWinner() {
        check(0, b: 1, c: 2)
        check(3, b: 4, c: 5)
        check(6, b: 7, c: 8)
        check(0, b: 4, c: 8)
        check(2, b: 4, c: 6)
        check(0, b: 3, c: 6)
        check(1, b: 4, c: 7)
        check(2, b: 5, c: 8)
    }
    func check(a: Int, b: Int, c: Int) {
    if labelArray[a].text = [0 , 3 , 6 , 0 , 2 , 0 , 1 , 2 ] {
    if labelArray[b].text = [1, 4, 7, 4, 4, 3, 4, 5 ] {
    if labelArray[c].text = [2, 5, 8, 8, 6, 6, 7, 8 ] {
        
    
    }
    }
    }
}
}