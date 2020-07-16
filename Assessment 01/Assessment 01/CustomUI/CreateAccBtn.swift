//
//  CreateAccBtn.swift
//  Assessment 01
//
//  Created by Chathura Wijekoon on 7/16/20.
//  Copyright © 2020 Chathura Wijekoon. All rights reserved.
//

import UIKit

class CreateAccBtn: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    func setupButton() {
        backgroundColor = #colorLiteral(red: 0.02182208002, green: 0.5175865293, blue: 0.5380067825, alpha: 1)
        layer.cornerRadius = frame.size.height/2
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.white.cgColor
        setTitleColor(.white, for: .normal)
    }
}
