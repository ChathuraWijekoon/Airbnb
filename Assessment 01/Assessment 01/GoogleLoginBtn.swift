//
//  GoogleLoginBtn.swift
//  Assessment 01
//
//  Created by Chathura Wijekoon on 7/16/20.
//  Copyright © 2020 Chathura Wijekoon. All rights reserved.
//

import UIKit

class GoogleLoginBtn: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    func setupButton() {
        backgroundColor = UIColor.white
        layer.cornerRadius = frame.size.height/2
        setTitleColor(#colorLiteral(red: 0.03275240026, green: 0.2678425147, blue: 0.310189666, alpha: 1), for: .normal)
    }
}
