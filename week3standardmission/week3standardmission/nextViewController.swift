//
//  nextViewController.swift
//  week3standardmission
//
//  Created by 조명근 on 2022/10/06.
//

import UIKit

class nextViewController: UIViewController {
    var resutlstring = ""
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resutlstring
    }

}
