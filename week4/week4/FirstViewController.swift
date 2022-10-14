//
//  FirstViewController.swift
//  week4
//
//  Created by 조명근 on 2022/10/14.
//

import UIKit

protocol labelChangeProtocol{
    func onChange(text: String)
}

class FirstViewController: UIViewController, labelChangeProtocol {

    func onChange(text :String){
        label.text = text
    }
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        guard let SecondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        
        SecondViewController.modalPresentationStyle = .fullScreen
        SecondViewController.delegate = self
        present(SecondViewController,animated: true)
    }
    
}
