//
//  Card.swift
//  SimpleCardViews
//
//  Created by Karen Fuentes on 12/17/16.
//  Copyright © 2016 Karen Fuentes. All rights reserved.
//

import UIKit

class Card: UIView {
    
    @IBOutlet weak var rightCardNumberLabel: UILabel!
    @IBOutlet weak var leftCardNumberLabel: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        if let view = Bundle.main.loadNibNamed("cardView", owner: self, options: nil)?.first as? UIView{
            self.addSubview(view)
            view.frame = self.bounds
        }
    }
}
