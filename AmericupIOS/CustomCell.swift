//
//  CustomCell.swift
//  AmericupIOS
//
//  Created by German Rivera P on 7/20/19.
//  Copyright © 2019 Santiago Muñoz. All rights reserved.
//

import Foundation
import UIKit

class CustomCell:UITableViewCell{
    var t1 : String?
    var t2 : String?
    var sc1 : String?
    var sc2 : String?
    var fl1 : UIImage?
    var fl2 : UIImage?
    
    
    var t1View : UITextView = {
        var textV = UITextView()
        textV.translatesAutoresizingMaskIntoConstraints = false
        return textV
    }()
    var t2View : UITextView = {
        var textV = UITextView()
        textV.translatesAutoresizingMaskIntoConstraints = false
        return textV
    }()
    var sc1View : UITextView = {
        var textV = UITextView()
        textV.translatesAutoresizingMaskIntoConstraints = false
        return textV
    }()
    var sc2View : UITextView = {
        var textV = UITextView()
        textV.translatesAutoresizingMaskIntoConstraints = false
        return textV
    }()
    var fl1View : UIImageView = {
        var imageV = UIImageView()
        imageV.translatesAutoresizingMaskIntoConstraints = false
        return imageV
    }()
    var fl2View : UIImageView = {
        var imageV = UIImageView()
        imageV.translatesAutoresizingMaskIntoConstraints = false
        return imageV
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(fl1View)
        self.addSubview(t1View)
        self.addSubview(sc1View)
        self.addSubview(sc2View)
        self.addSubview(t2View)
        fl1View.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        fl1View.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        fl1View.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        fl1View.widthAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
        t1View.leftAnchor.constraint(equalTo: self.fl1View.rightAnchor).isActive = true
        t1View.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        t1View.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        t1View.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        sc1View.leftAnchor.constraint(equalTo: self.t1View.rightAnchor).isActive = true
        sc1View.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        sc1View.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        sc1View.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        sc2View.leftAnchor.constraint(equalTo: sc1View.rightAnchor).isActive = true
        sc2View.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        sc2View.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        sc2View.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        t2View.leftAnchor.constraint(equalTo: self.sc2View.rightAnchor).isActive = true
        t2View.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        t2View.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        t2View.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        fl1View.image = fl1
        t1View.text = t1
        sc1View.text = sc1
        sc2View.text = sc2
        t2View.text = t2
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
}
