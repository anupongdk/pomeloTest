//
//  PickupTableViewCell.swift
//  Pomelo
//
//  Created by anupong dorkkunm on 28/8/2563 BE.
//  Copyright © 2563 anupong dorkkunm. All rights reserved.
//

import UIKit

class PickupTableViewCell: UITableViewCell {

    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblDistance: UILabel!
    @IBOutlet weak var btnCheck: UIButton!
    @IBOutlet weak var constLblLocationTop: NSLayoutConstraint!
    @IBOutlet weak var constLblLocationBtm: NSLayoutConstraint!
    @IBOutlet weak var constLblTypeTop: NSLayoutConstraint!
    @IBOutlet weak var constLblTypeBtm: NSLayoutConstraint!
    var cellData:Pickup?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(data:Pickup) {
        cellData = data
        setUI()
    }
    
    func setUI(){
        
        lblLocation.text = cellData?.address1
        lblName.text = cellData?.alias
        lblType.text = cellData?.city
        btnCheck.setCheckButton(isSelect:false)
        
        
        if cellData?.address1 == "" {
            print(cellData?.alias)
            constLblLocationTop.constant = 0
            constLblLocationBtm.constant = 0
        }else{
            constLblLocationTop.constant = 8
            constLblLocationBtm.constant = 4
        }
        
        if cellData?.city == "" {
            constLblTypeTop.constant = 0
            constLblTypeBtm.constant = 0
        }else{
            constLblTypeTop.constant = 4
            constLblTypeBtm.constant = 8
        }
        self.layoutIfNeeded()
    }
    
}
