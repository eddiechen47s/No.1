//
//  PicViewController.swift
//  No.1
//
//  Created by ktrade on 2020/8/11.
//  Copyright © 2020 Swift. All rights reserved.
//

import UIKit

class PicViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var selectedImage: UIImageView!
    
    var recivceStr: String?
    var recivceImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = recivceStr
        selectedImage.image = recivceImage
    }


}
