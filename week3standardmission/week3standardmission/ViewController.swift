//
//  ViewController.swift
//  week3standardmission
//
//  Created by 조명근 on 2022/10/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dividebutton: UIButton!
    
    
    @IBAction func multibutton(_ sender: Any) {
    }
    
    @IBOutlet weak var minusbutton: UIButton!
    
    @IBOutlet weak var plusbutton: UIButton!

    @IBOutlet weak var firsttextfield: UITextField!
    
    @IBOutlet weak var secondtextfield: UITextField!
    
    @IBAction func plusbuttondidtapped(_ sender: Any) {
        guard let plusnextviewcontroller = UIStoryboard(name: "Main", bundle : nil).instantiateViewController(identifier: "nextViewController") as? nextViewController else { return }
        
        guard let firstnum = firsttextfield.text else { return }
        guard let secondnum = secondtextfield.text else { return }
        
        let result = Int(firstnum)! + Int(secondnum)!
        
        
        plusnextviewcontroller.resutlstring = String(result)
        
        present(plusnextviewcontroller, animated: true)
    }
    
    @IBAction func minusbuttonistapped(_ sender: Any) {
        guard let minusnextviewcontroller = UIStoryboard(name: "Main", bundle : nil).instantiateViewController(identifier: "nextViewController") as? nextViewController else { return }
        
        guard let firstnum = firsttextfield.text else { return }
        guard let secondnum = secondtextfield.text else { return }
        
        let result = Int(firstnum)! - Int(secondnum)!
        
        
        minusnextviewcontroller.resutlstring = String(result)
        
        present(minusnextviewcontroller, animated: true)
    }
    
    @IBAction func multibuttonistapped(_ sender: Any) {
        guard let multinextviewcontroller = UIStoryboard(name: "Main", bundle : nil).instantiateViewController(identifier: "nextViewController") as? nextViewController else { return }
        
        guard let firstnum = firsttextfield.text else { return }
        guard let secondnum = secondtextfield.text else { return }
        
        let result = Int(firstnum)! * Int(secondnum)!
        
        
        multinextviewcontroller.resutlstring = String(result)
        
        present(multinextviewcontroller, animated: true)
    
    }
    
    @IBAction func dividorbuttonistapped(_ sender: Any) {
        guard let dividenextviewcontroller = UIStoryboard(name: "Main", bundle : nil).instantiateViewController(identifier: "nextViewController") as? nextViewController else { return }
        
        guard let firstnum = firsttextfield.text else { return }
        guard let secondnum = secondtextfield.text else { return }
        
        let result = Int(firstnum)! / Int(secondnum)!
        
        
        dividenextviewcontroller.resutlstring = String(result)
        
        present(dividenextviewcontroller, animated: true)
    }
    
}

