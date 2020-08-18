//
//  InstagramCell.swift
//  uicollectionview
//
//  Created by Tushar Tapadia on 22/07/20.
//  Copyright © 2020 Tushar Tapadia. All rights reserved.
//

import Foundation
import UIKit

class InstagramCell: UICollectionViewCell{
    
    lazy var imageView: UIImageView = {
        let iv = UIImageView()
        
//            iv.layer.borderWidth = 1.5
//            iv.layer.borderColor = UIColor.black.cgColor
            iv.contentMode = .scaleAspectFit
            iv.layer.cornerRadius = 10
            iv.layer.masksToBounds = true
            iv.clipsToBounds = true
            return iv
        }()
    
    lazy var bb: UIView = {
        let c = UIView()
        c.backgroundColor = .white
        return c
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    fileprivate func setupLayout(){
        addSubview(bb)
           let darkBlur = UIBlurEffect(style: UIBlurEffect.Style.dark)
           let blurView = UIVisualEffectView(effect: darkBlur)
           blurView.layer.cornerRadius = 10
        
        addSubview(imageView)
        imageView.addSubview(blurView)
        _ = imageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        _ = bb.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
