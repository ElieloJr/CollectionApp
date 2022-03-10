//
//  CollectionViewCell.swift
//  CollectionApp
//
//  Created by Usr_Prime on 10/03/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configure(with name: String) {
        labelCell.text = name
    }
}
