//
//  HeaderCollectionReusableView.swift
//  CollectionApp
//
//  Created by Usr_Prime on 11/03/22.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {

    @IBOutlet weak var text: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .yellow
    }
    func configura(texto: String) {
        text.text = texto
    }
}
