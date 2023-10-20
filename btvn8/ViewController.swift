//
//  ViewController.swift
//  btvn8
//
//  Created by Phạm Hồng Sơn on 18/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDiamond: UIImageView!
    @IBOutlet weak var lbRich: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        imgDiamond.alpha = 0
        UIView.animate(withDuration: 5) {
            self.imgDiamond.alpha = 1
        }
        setLbRich()
    }
    
    func setLbRich(){
        lbRich.alpha = 1
        lbRich.font = UIFont.systemFont(ofSize: 30)
        lbRich.textColor = .white
        UIView.animate(withDuration: 5) {
            self.lbRich.alpha = 1
            self.lbRich.center = CGPoint(x: self.lbRich.center.x, y: 400)
        }
    }
}

