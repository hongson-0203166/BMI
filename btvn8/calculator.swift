//
//  calculator.swift
//  btvn8
//
//  Created by Phạm Hồng Sơn on 18/10/2023.
//

import UIKit

class calculator: UIViewController {
    @IBOutlet weak var viewHeader: UIView!
    var count = 50
    var count1 = 20
    var BMI:Double = 0.0
    var weight:Double = 0.0
    var height:Double = 0.0
    @IBOutlet weak var viewBody: UIView!
    @IBOutlet weak var btnMale: UIButton!
    @IBOutlet weak var btnFemale: UIButton!
    @IBOutlet weak var viewHeight: UIView!
    @IBOutlet weak var viewWeight: UIView!
    @IBOutlet weak var viewAge: UIView!
    @IBOutlet weak var btnCalcultae: UIButton!
    @IBOutlet weak var imgMale: UIImageView!
    @IBOutlet weak var imgFemale: UIImageView!
    @IBOutlet weak var lbWeight: UILabel!
    @IBOutlet weak var lbAge: UILabel!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var bntSubtract: UIButton!
    @IBOutlet weak var btnPlus1: UIButton!
    @IBOutlet weak var btnSubtrac1: UIButton!
    @IBOutlet weak var lbHeight: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(view.frame)
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        setHeader()
        setBody()
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       
    }
       
    
    func setHeader(){
//        lbTitle.backgroundColor = UIColor(red: 28/255, green: 34/255, blue: 51/255, alpha: 1.0)
//        lbTitle.center.x = view.center.x
//        lbTitle.textAlignment = NSTextAlignment.center
//        lbTitle.font = .boldSystemFont(ofSize: 20)
//        
        viewHeader.frame = CGRect(x: 0, y: 0, width: Int(view.frame.width), height: 90)
        viewHeader.backgroundColor = UIColor(red: 28/255, green: 34/255, blue: 51/255, alpha: 1.0)
        print("viewHeader: \(viewHeader.frame)")
    }
    
    
    func setBody(){
        viewBody.frame = CGRect(x: 0, y: Int(viewHeader.frame.maxY) + 10, width: Int(view.frame.width), height: Int(view.frame.height - viewHeader.frame.height - 10))
        viewBody.backgroundColor = UIColor(red: 28/255, green: 34/255, blue: 51/255, alpha: 1.0)
        
        // Male
        btnMale.frame = CGRect(x: 20, y: 20, width: (self.view.frame.width - 60) / 2, height: (self.viewBody.frame.height - 200) / 3)
        
        btnMale.backgroundColor = UIColor(red: 54/255, green: 54/255, blue: 67/255, alpha: 1.0)
        btnMale.layer.cornerRadius = 5
        btnMale.layer.masksToBounds = true
        btnMale.titleColor(for: .highlighted)
        imgMale.frame = CGRect(x: 0, y: 0, width: 48, height: 48)
        imgMale.center = btnMale.center
        
     
        //Female
        btnFemale.frame = CGRect(x: self.btnMale.frame.maxX + 20 , y: 20 , width: (self.view.frame.width - 60) / 2, height: (self.viewBody.frame.height - 200) / 3)
        btnFemale.backgroundColor = UIColor(red: 54/255, green: 54/255, blue: 67/255, alpha: 1.0)
        btnFemale.layer.cornerRadius = 5
        btnFemale.layer.masksToBounds = true
        imgFemale.frame = CGRect(x: 0, y: 0, width: 48, height: 48)
        imgFemale.center = btnFemale.center
        //Height
        viewHeight.frame = CGRect(x: 20, y: self.btnMale.frame.maxY + 20, width: (self.view.frame.width - 40), height: (self.viewBody.frame.height - 200) / 3 )
        viewHeight.backgroundColor = UIColor(red: 54/255, green: 54/255, blue: 67/255, alpha: 1.0)
        viewHeight.layer.cornerRadius = 5
        viewHeight.layer.masksToBounds = true
        
        //weight
        viewWeight.frame = CGRect(x: 20, y: viewHeight.frame.maxY + 20, width: (self.view.frame.width - 60) / 2, height: (self.viewBody.frame.height - 200) / 3)
        viewWeight.backgroundColor = UIColor(red: 54/255, green: 54/255, blue: 67/255, alpha: 1.0)
        viewWeight.layer.cornerRadius = 5
        viewWeight.layer.masksToBounds = true
        
        lbWeight.frame = CGRect(x: viewWeight.bounds.width / 2 , y: viewWeight.bounds.height / 2 - 30, width: 30, height: 30)
        lbWeight.text = "50"
        lbWeight.textColor = .white
        btnPlus.frame = CGRect(x: 30, y: 100, width: 30, height: 30)
        btnPlus.setImage(UIImage(named: "plus"), for: .normal)
        
        bntSubtract.frame = CGRect(x: btnPlus.frame.maxX + 50, y: 100, width: 30, height: 30)
        bntSubtract.setImage(UIImage(named: "subtract"), for: .normal)
        
        
        //Age
        viewAge.frame = CGRect(x: viewWeight.frame.maxX + 20, y: viewHeight.frame.maxY + 20, width: (self.view.frame.width - 60) / 2, height: (self.viewBody.frame.height - 200) / 3)
        viewAge.backgroundColor = UIColor(red: 54/255, green: 54/255, blue: 67/255, alpha: 1.0)
        viewAge.layer.cornerRadius = 5
        viewAge.layer.masksToBounds = true
        
        lbAge.frame = CGRect(x: 75 , y: 65, width: 30, height: 30)
        lbAge.text = "20"
        lbAge.textColor = .white
        btnPlus1.frame = CGRect(x: viewAge.bounds.origin.x + 30, y: 100, width: 30, height: 30)
        btnPlus1.setImage(UIImage(named: "plus"), for: .normal)
        btnSubtrac1.frame = CGRect(x: viewAge.bounds.maxX - 60, y: 100, width: 30, height: 30)
        btnSubtrac1.setImage(UIImage(named: "subtract"), for: .normal)
        
        // btnCalculate
        btnCalcultae.frame = CGRect(x: 20, y: viewAge.frame.maxY + 20, width: (self.view.frame.width - 40), height: 70)
        btnCalcultae.backgroundColor = UIColor(red: 215/255, green: 71/255, blue: 109/255, alpha: 1.0)
        
        
        btnCalcultae.layer.cornerRadius = 5
        btnCalcultae.layer.masksToBounds = true
        print(viewWeight.bounds.height / 2 - 30 )
    
    }
    
    
    @IBAction func btnClickMale(_ sender: Any) {
        optionSex(sex: true)
        
    }
    
    @IBAction func btnClickFemale(_ sender: Any) {
        optionSex(sex: false)
    }
    
    func optionSex(sex:Bool){
        if sex{
            btnMale.isEnabled = false
            btnMale.backgroundColor = .clear
            btnFemale.isEnabled = true
            btnFemale.backgroundColor = UIColor(red: 54/255, green: 54/255, blue: 67/255, alpha:1)
            
            
        }else{
            btnMale.isEnabled = true
            btnFemale.isEnabled = false
            btnFemale.backgroundColor = .clear
            btnMale.backgroundColor = UIColor(red: 54/255, green: 54/255, blue: 67/255, alpha:1)
            
        }
    }
   
    
    
    @IBAction func btnPlus(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {[self] in
            if count < 200{ 
                self.count += 1
                lbWeight.text = "\(self.count)"
            }else{
                return
            }
        }
    }
    
    
    @IBAction func onclickSub(_ sender: Any) {
        UIView.animate(withDuration: 0.5) { [self] in
            
            if count > 0 {
                self.count -= 1
                lbWeight.text = "\(self.count)"
            }
        }
    }
    
    @IBAction func onclickPlus1(_ sender: Any) {
//        UIView.animate(withDuration: 0.5) { [self] in
            
            if count1 < 150{
                self.count1 += 1
                lbAge.text = "\(self.count1)"
            }
        
        
    }
    @IBAction func onclickSub1(_ sender: Any) {
//        UIView.animate(withDuration: 0.5) { [self] in
            if(self.count1 > 0){
                self.count1 -= 1
                lbAge.text = "\(self.count1)"
            }else{
                return
            }
//        }
    }
    
    @IBAction func onChangeHeight(_ sender: UISlider) {
        lbHeight.text = String(Int(sliderValue.value)) + " cm"
        lbHeight.textAlignment = .center
        
    }
    
    @IBAction func gotoResults(_ sender: Any) {
        weight = Double(count)
        
        height = Double(sliderValue.value) / 100
        BMI = weight / (height * height)
        
        let strBoard = UIStoryboard(name: "Main", bundle: nil)
        let resultsController = strBoard.instantiateViewController(identifier: "Results") as! ResultViewController
        resultsController.result = BMI
        self.present(resultsController, animated: true)
    }
    
}
