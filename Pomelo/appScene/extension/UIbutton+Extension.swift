//
//  UIbutton+Extension.swift
//  Pomelo
//
//  Created by anupong dorkkunm on 28/8/2563 BE.
//  Copyright © 2563 anupong dorkkunm. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setCheckButton(isSelect:Bool) {
        
        if isSelect {
            self.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
        }else{
            self.setImage(UIImage(systemName: "circle"), for: .normal)
        }
        self.imageView?.image?.withRenderingMode(.alwaysTemplate)
        self.tintColor = .black
        
    }
    
}
