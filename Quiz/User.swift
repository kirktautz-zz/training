//
//  User.swift
//  Quiz
//
//  Created by Kirk Tautz on 5/13/16.
//  Copyright © 2016 Kirk Tautz. All rights reserved.
//

import Foundation
import Parse

class User {
    var username: String = "kirk"
    var password: String = "1234"
    var email: String?
    var error: Bool? {
        willSet {
            print(newValue)
            parseerror = newValue
        }
        didSet {
                    }
    }
    let user = PFUser()
    
    func signup() {
        user.username = username
        user.password = password
        
        user.signUpInBackgroundWithBlock { (success, error) in
            if success {
                print("success")
            } else {
                self.error = false
                NSNotificationCenter.defaultCenter().postNotificationName("error", object: error)

            }
        }
    }
}

