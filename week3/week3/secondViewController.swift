//
//  secondviewcontrollerViewController.swift
//  week3
//
//  Created by 조명근 on 2022/10/06.
//

import UIKit

class secondViewController: UIViewController {
    var resultstring = ""
    @IBOutlet weak var resultlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultlabel.text = resultstring
        
    }

}
 
