//
//  playTableViewCell.swift
//  Totality_Corp_Assignment
//
//  Created by Richa Joshi on 26/08/23.
//

import UIKit

class playTableViewCell: UITableViewCell {

   //@IBOutlet weak var yelowView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var orangeView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        yellowView.layer.cornerRadius = CGFloat(8.0)
        greenView.layer.cornerRadius = CGFloat(24.0)
        orangeView.layer.cornerRadius = CGFloat(16.0)
    }
  
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
