//
//  SourceTableViewCell.swift
//  Be Human
//
//  Created by Jassem Al-Buloushi on 7/26/19.
//  Copyright © 2019 Jassem Al-Buloushi. All rights reserved.
//

import UIKit

protocol TableViewNew {
    func onClickCell(index: Int)
}

class SourceTableViewCell: UITableViewCell {
    
    //Propeties: -
    
    var cellDelegate: TableViewNew?
    var index: IndexPath?
    
    //Outlets: -
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func sourceButtonPressed(_ sender: UIButton) {
        cellDelegate?.onClickCell(index: (index?.row)!)
        
        
    }
    
}
