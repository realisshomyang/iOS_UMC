//
//  ViewController.swift
//  week3
//
//  Created by 조명근 on 2022/10/06.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewdidload")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewdiddissapaear")
    }
    @IBAction func buttondidtap(_ sender: Any) {
        guard let nextviewcontroller = UIStoryboard(name:"Main",bundle: nil).instantiateViewController(identifier: <#T##String#>) as?
                secondViewController else {return}
        present(nextviewcontroller,animated: true)
    }
    
    guard let firstnumber = firsttextfield.text else {reutrn}
    guard let secondnumber = secondtextfield.text else{return}
    
    
    
    
}

