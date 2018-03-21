//
//  SecondViewController.swift
//  TestProject
//
//  Created by Appinventiv on 10/02/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    

    @IBOutlet weak var userNameTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var phonenoTF: UITextField!
    
    @IBOutlet weak var descriptionTV: UITextView!
    
    var back : DataSend?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBackButton(_ sender: Any) {
        self.back?.sendMyDataBack(self.userNameTF.text!, self.emailTF.text! ,self.nameTF.text!, self.phonenoTF.text!,self.descriptionTV.text!)
        
        if ((nameTF?.text?.isEmpty)! || (emailTF.text?.isEmpty)! || (phonenoTF.text?.isEmpty)!){
            
            alert(alertname: "* fields can't be empty")
        }
        else if ((limit(40, userNameTF.text!)) || (userNameTF.text!.contains(" "))){
            alert(alertname: "Incorrect username")
        }
        else if (limit(40, nameTF.text!))
        {
            alert(alertname: "Name exeeds limit 40")
        }
        
        else if (limit(10, phonenoTF.text!))
        {
            alert(alertname: "Please enter a valid phone number")
        }
            
        else if (limit(250, descriptionTV.text!))
        {
            alert(alertname: "Description exceeds limit")
        }
            
        else {
            self.navigationController?.popViewController(animated: true)
    }
    }
    
    
    
    func limit(_ value : Int, _ counter : String)-> Bool
    {
        if counter.count > value {
            return true }
        return false
    }
    
    
    func alert (alertname : String ){
        let alert = UIAlertController(title: "", message: alertname, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "I know", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

