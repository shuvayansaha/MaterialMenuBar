//
//  ViewController.swift
//  MenuBar
//
//  Created by Shuvayan Saha on 24/02/17.
//  Copyright © 2017 MagicMind Technologies Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var menuBar: UIView!
    @IBOutlet weak var lead: NSLayoutConstraint!
    @IBOutlet weak var trail: NSLayoutConstraint!
   
    var menuShowing1 = false

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navBar.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 64)
        
        lead.constant = -(menuBar.frame.size.width)
        trail.constant = view.frame.size.width

    }

   


    @IBAction func barButton(_ sender: UIBarButtonItem) {
   
        menuShow()

    }



    
    // Menu Showing Function
    
    func menuShow() {
        
        if menuShowing1 {

            lead.constant = -(menuBar.frame.size.width)
            trail.constant = view.frame.size.width
            
            UIView.animate(withDuration: 0.3, animations: {
                
                self.view.layoutIfNeeded()
                
            })
            
        } else {
            
            lead.constant = 0
            trail.constant = 80

            UIView.animate(withDuration: 0.3, animations: {
                
                self.view.layoutIfNeeded()
                
            })
        }
        menuShowing1 = !menuShowing1
    }
    




}

