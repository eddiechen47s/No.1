//
//  ViewController.swift
//  No.1
//
//  Created by ktrade on 2020/8/11.
//  Copyright © 2020 Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var imageAr: [IceImage] = []
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print("n1")
        print("n2")
        setupData()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationItem.title = "TableView"
    }
    
    // MARK: - Helps
    fileprivate func setupData() {
        let models1 = IceImage(img: "ice")
        let models2 = IceImage(img: "ice1")
        let models3 = IceImage(img: "ice2")
        
        imageAr.append(models1)
        imageAr.append(models2)
        imageAr.append(models3)
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageAr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.imageViews.image = UIImage(named: imageAr[indexPath.row].img)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height / 3
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        tableView.deselectRow(at: indexPath, animated: true)
        
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "picViewController") as! PicViewController
        
        controller.recivceStr = imageAr[indexPath.row].img
        controller.recivceImage = UIImage(named: imageAr[indexPath.row].img)
        
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    
}
