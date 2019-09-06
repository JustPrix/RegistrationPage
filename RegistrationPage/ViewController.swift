//
//  ViewController.swift
//  RegistrationPage
//
//  Created by COE-01 on 05/09/19.
//  Copyright © 2019 COE-01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtFieldEmail: BorderViewDrawClass!
    @IBOutlet weak var txtFieldPassword: BorderViewDrawClass!
    @IBOutlet weak var lblResultMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func BottomBorder(textBox:UITextField)->UITextField  {
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect.init(x: 0.0, y: textBox.frame.height-1, width: textBox.frame.width, height: 1.0)//(0, textBox.frame.height - 1, textBox.frame.width, 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        textBox.borderStyle = UITextBorderStyle.none
        textBox.layer.addSublayer(bottomLine)
        return textBox
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        txtFieldEmail.setNeedsDisplay()//.draw(txtEmailId.frame)
        txtFieldPassword.setNeedsDisplay()
        
    }
    @IBAction func btnRegisterActionTouchUpInside(_ sender: UIButton) {
        lblResultMsg.text = "Go to our website and do your registration!"
    }
    
    @IBAction func btnLoginActionTouchUpInside(_ sender: UIButton) {
        /*
        lblResultMsg.text = "Login Successful!"
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.lblResultMsg.text = " "
        }
        */
        let alert = UIAlertController(title: "Report", message: "Login Succesful!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Cancel?",style:.destructive))
        alert.addAction(UIAlertAction(title:"Proceed",style:.default))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func btnForgotPasswordTouchUpInside(_ sender: Any) {
        lblResultMsg.text = "Go to our website change the password!"
    }
}

