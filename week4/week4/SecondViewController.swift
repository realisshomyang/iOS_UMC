//
//  SecondViewController.swift
//  week4
//
//  Created by 조명근 on 2022/10/14.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    var delegate: labelChangeProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        guard let text = textField.text else{return}
        
        delegate?.onChange(text : text)
        dismiss(animated: true)
    }
    

}
