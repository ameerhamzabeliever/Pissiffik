//
//  NewsCell.swift
//  pisiffik_ios
//
//  Created by Haider Ali on 07/06/2022.
//  Copyright © 2022 softwareAlliance. All rights reserved.
//

import UIKit
import SkeletonView

class NewsCell: UITableViewCell {
    
    @IBOutlet weak var backView: UIView!{
        didSet{
            backView.isSkeletonable = true
        }
    }
    @IBOutlet weak var notificationImage: UIImageView!
    @IBOutlet weak var headingLbl: UILabel!{
        didSet{
            headingLbl.font = Fonts.mediumFontsSize14
            headingLbl.textColor = R.color.textBlackColor()
        }
    }
    @IBOutlet weak var descriptionLbl: UILabel!{
        didSet{
            descriptionLbl.font = Fonts.mediumFontsSize12
            descriptionLbl.textColor = R.color.textGrayColor()
        }
    }
    @IBOutlet weak var dateLbl: UILabel!{
        didSet{
            dateLbl.font = Fonts.mediumFontsSize12
            dateLbl.textColor = R.color.darkGrayColor()
        }
    }
    @IBOutlet weak var notificationReadImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setSkeletonView(){
        backView.showAnimatedGradientSkeleton()
        notificationImage.isHidden = true
        headingLbl.isHidden = true
        descriptionLbl.isHidden = true
        dateLbl.isHidden = true
        notificationReadImage.isHidden = true
    }
    
    func hideSkeletonView(){
        backView.hideSkeleton()
        notificationImage.isHidden = false
        headingLbl.isHidden = false
        descriptionLbl.isHidden = false
        dateLbl.isHidden = false
        notificationReadImage.isHidden = false
    }
    
    
}
