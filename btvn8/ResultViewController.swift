//
//  ResultViewController.swift
//  btvn8
//
//  Created by Phạm Hồng Sơn on 19/10/2023.
//

import UIKit

class ResultViewController: UIViewController {
    var result:Double!
    @IBOutlet weak var lbTinhTrang: UILabel!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var lbWarning: UILabel!
    @IBOutlet weak var lbGood: UILabel!
    @IBOutlet weak var btnRecalculator: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnRecalculator.layer.cornerRadius = 5
        btnRecalculator.layer.masksToBounds = true
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(result!)
        switch Int(result ?? 0){
        case 0...18 :
            lbTinhTrang.text = "NO NORMAL"
            lbTinhTrang.textColor = .red
            lbResult.text = "\(result!)"
            lbWarning.text = "You have a \(lbTinhTrang!.text?.lowercased() ?? "") body weight."
            //lbGood.text = "Good job!"
            break
        case 18..<25 :
            lbTinhTrang.text = "NORMAL"
            lbTinhTrang.textColor = .green
            lbResult.text = "\(result!)"
            lbWarning.text = "You have a \(lbTinhTrang!.text?.lowercased() ?? "") body weight."
            lbGood.text = "Good job!"
            break
        case 25..<30 :
            lbTinhTrang.text = "NO NORMAL"
            lbTinhTrang.textColor = .red
            lbResult.text = "\(result!)"
            lbWarning.text = "You have a \(lbTinhTrang!.text?.lowercased() ?? "") body weight."
            //lbGood.text = "Good job!"
            break
        case 30..<35 :
            lbTinhTrang.text = "NO NORMAL"
            lbTinhTrang.textColor = .red
            lbResult.text = "\(result!)"
            lbWarning.text = "You have a \(lbTinhTrang!.text?.lowercased() ?? "") body weight."
            break
        default:
            lbTinhTrang.text = "NO NORMAL"
            lbTinhTrang.textColor = .red
            lbResult.text = "\(result!)"
            lbWarning.text = "You have a \(lbTinhTrang!.text?.lowercased() ?? "") body weight."
            break
        }
    }
    
    @IBAction func reCalculator(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
