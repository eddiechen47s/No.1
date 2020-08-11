//
//  CollectionViewCell.swift
//  No.1
//
//  Created by ktrade on 2020/8/11.
//  Copyright © 2020 Swift. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var images: UIImageView!
    
    var viewModel: IceImage? {
        didSet {
            if let image = UIImage(named: viewModel?.img ?? "") {
                images.image = image
            }
        }
    }
    
    static let identfier = "CollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func fetchData(with model: IceImage) {
        let str = model.img
        if let image = UIImage(named: str) {
            images.image = image
        }
    }

}
