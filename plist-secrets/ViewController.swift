//
//  ViewController.swift
//  plist-secrets
//
//  Created by Brian Sharon on 1/2/18.
//  Copyright © 2018 Brian Sharon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secret1: UILabel!
    @IBOutlet weak var secret2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Load the dictionary of secret keys from secrets.plist
        let path = Bundle.main.path(forResource: "secrets", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        // Set the secret key values on the UILabels
        secret1.text = dict!.object(forKey: "API_SECRET_ONE") as? String
        secret2.text = dict!.object(forKey: "API_SECRET_TWO") as? String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

