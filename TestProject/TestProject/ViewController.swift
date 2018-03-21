//
//  ViewController.swift
//  TestProject
//
//  Created by Appinventiv on 10/02/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

protocol DataSend {
func sendMyDataBack(_ userName : String, _ email : String, _ name : String, _ phoneNo : String, _ description : String)
}


class ViewController: UIViewController, DataSend {

  
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneNoLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var getInfoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getInfoButton(_ sender: Any) {
    let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
        secondViewController.back = self
   self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    

    func sendMyDataBack(_ userName : String, _ email : String, _ name : String, _ phoneNo : String, _ description : String) {
        self.userNameLabel.text = userName
        self.emailLabel.text = email
        self.nameLabel.text = name
        self.phoneNoLabel.text = phoneNo
        self.descriptionLabel.text = description
    }
}

