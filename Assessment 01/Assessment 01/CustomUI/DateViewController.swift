//
//  DateViewController.swift
//  Assessment 01
//
//  Created by Chathura Wijekoon on 7/17/20.
//  Copyright © 2020 Chathura Wijekoon. All rights reserved.
//

import UIKit

class DateViewController : UIViewController{
    @IBOutlet weak var birthdateText: UITextField!
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePicker()
    }
    
    func createDatePicker() {
        
        birthdateText.textAlignment = .center
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        
        // assign toolbar
        
        birthdateText.inputAccessoryView = toolbar
        birthdateText.inputView = datePicker
        
        datePicker.datePickerMode = .date
    }
    @objc func donePressed() {
        
        // formatter
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
    
        birthdateText.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
}
