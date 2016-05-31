//
//  CreateViewController.swift
//  carousel
//
//  Created by Nicholas Wallen on 5/30/16.
//  Copyright © 2016 Nicholas Wallen. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var termsButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var firstNameTextfield: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = scrollView.frame.size
        scrollView.contentInset.bottom = 100
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector:"keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector:"keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)

        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -105
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapTerms(sender: AnyObject) {
        termsButton.selected = !termsButton.selected
    }
    
    @IBAction func didTapCreate(sender: AnyObject) {
        if firstNameTextfield.text!.isEmpty || lastNameTextField.text!.isEmpty || emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            let alertController = UIAlertController(title: "Info Missing", message: "Please fill out all fields to create an account", preferredStyle: .Alert)
            let OKaction = UIAlertAction(title: "OK", style: .Cancel){(action) in
            }
            alertController.addAction(OKaction)
            presentViewController(alertController, animated: true){
            }
        }
        else if termsButton.selected == false {
            let alertController = UIAlertController(title: "Agree to Terms", message: "You must agree to terms to create an account", preferredStyle: .Alert)
            let OKaction = UIAlertAction(title: "OK", style: .Cancel){(action) in
            }
            alertController.addAction(OKaction)
            presentViewController(alertController, animated: true){
            }
        } else {
            let alertController = UIAlertController(title: "Creating Account", message:nil, preferredStyle: .Alert)
            presentViewController(alertController, animated: true){
            }
            delay(2){
                alertController.dismissViewControllerAnimated(true, completion:{
                        self.performSegueWithIdentifier("tutorial", sender: self)
                    })
                
            }
        }
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView.contentOffset.y <= -20 {
            view.endEditing(true)
        }
    }
    
    @IBAction func didTapBack(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    func keyboardWillShow(notification: NSNotification!) {
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        scrollView.contentOffset.y = scrollView.contentInset.bottom
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        buttonParentView.frame.origin.y = buttonInitialY
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
