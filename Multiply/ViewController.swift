//
//  ViewController.swift
//  Multiply
//
//  Created by maxkiley on 9/9/15.
//  Copyright (c) 2015 maxkiley. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var firstNumberMultiplied: UITextField!
    @IBOutlet weak var secondNumberMultiplied: UITextField!
    @IBOutlet weak var mvpProductLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var operatorController: UISegmentedControl!
    @IBOutlet weak var operatorLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func solveButtonPressed(sender: AnyObject)
    {
        //mvp: takes first input multiplied by second input and displays the product
       
        let firstNumberString: String = firstNumberMultiplied.text     //saves first text input to string
        let number1 = (firstNumberString as NSString).doubleValue  //converting text string to a double
        let secondNumberString: String = secondNumberMultiplied.text//saves second text input to a string
        let number2 = (secondNumberString as NSString).doubleValue//converts second text field value to double
                //Stretch 3
       //checks what segment is selected
        if(operatorController.selectedSegmentIndex == 0) //checks if segment index 0 (Add) is selected
        {
            operatorLabel.text = "+"
            let sum: Double = number1 + number2 //adds numbers
            mvpProductLabel.text = "\(sum)" //displays numbers
            if(sum % 2 == 1)// if odd display funny image
            {
                imageView.image = UIImage(named: "funny")
            }
            else  //is even, display funnier image
            {
                imageView.image = UIImage(named: "funnier")
            }
            if(sum == 64)
            {
                imageView.image = UIImage(named: "bowser") //displays bowser
            }
        }
       
        if(operatorController.selectedSegmentIndex == 1) //checks if segment index 1 (Minus) is selected
        {
            operatorLabel.text = "-"
            let difference: Double = number1 - number2 //subtracts numbers
            mvpProductLabel.text = "\(difference)" //displays numbers
            if(difference % 2 == 1) //if odd display funny image
            {
                imageView.image = UIImage(named: "funny")
            }
            else // difference is even, display funnier image
            {
                imageView.image = UIImage(named: "funnier")
            }
            if(difference == 64)
            {
                imageView.image = UIImage(named: "bowser") //displays bowser
            }
        }
       
        if(operatorController.selectedSegmentIndex == 2) //checks if segment index 2 (Multiply) is selected
        {
            operatorLabel.text = "X"
            let product: Double = number1 * number2 //multiply numbers
            mvpProductLabel.text = "\(product)" //displays numbers
            
            if(product % 2 == 1) // if odd display funny image
            {
                imageView.image = UIImage(named: "funny")
            }
            else //product is even, display funnier image
            {
                imageView.image = UIImage(named: "funnier")
            }
            if(product == 64)
            {
                imageView.image = UIImage(named: "bowser") // displays bowser
            }
        }
       
        if(operatorController.selectedSegmentIndex == 3) //checks if segment index 3 (Divide) is selected
        {
            operatorLabel.text = "/"
            let division: Double = number1 / number2 //divides numbers
            mvpProductLabel.text = "\(division)" //displays numbers
            if(division % 2 == 1) //if odd display funny image
            {
                imageView.image = UIImage(named: "funny")
            }
            else //division is even, display funnier image
            {
                imageView.image = UIImage(named: "funnier")
            }
            if(division == 64)
            {
                imageView.image = UIImage(named: "bowser") //displays bowser
            }
        }
    }
}