//
//  ViewController.swift
//  Quiz
//
//  Created by Kirk Tautz on 5/13/16.
//  Copyright © 2016 Kirk Tautz. All rights reserved.
//

import UIKit

var parseerror: Bool?

class ViewController: UIViewController {
let user = User()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        user.signup()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(notify), name: "error", object: user.error)
        
        
        print(parseerror)
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func notify() {
        print(user.error)
    }


}

