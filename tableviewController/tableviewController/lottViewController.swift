//
//  lottViewController.swift
//  tableviewController
//
//  Created by 조명근 on 2022/10/28.
//

import UIKit
import Lottie


class lottViewController: UIViewController {

    let animationView: LottieAnimationView = {
        let animationView: LottieAnimationView = .init(name: "ghost")
           
           return animationView
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        animationView.play()
        // 단 한번 실행
        animationView.loopMode = .playOnce
        // 무한적으로 실행
        animationView.loopMode = .loop
        // 2번 실행 후 종료
        animationView.loopMode = .repeat(2)
    }
        // MARK: - setup
            func setup() {
                addViews()
                setConstraints()
            }
            
            // MARK: - addViews
            func addViews() {
                view.addSubview(animationView)
            }
            
            // MARK: - setConstraints
            func setConstraints() {
                animationViewConstraints()
            }
            
            func animationViewConstraints() {
                animationView.translatesAutoresizingMaskIntoConstraints = false
                animationView.widthAnchor.constraint(equalToConstant: 200).isActive = true
                animationView.heightAnchor.constraint(equalToConstant: 200).isActive = true
                animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
                animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            }
    
}
