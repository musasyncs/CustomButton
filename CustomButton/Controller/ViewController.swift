//
//  ViewController.swift
//  CustomButton
//
//  Created by Ewen on 2021/8/17.
//

import UIKit

class ViewController: UIViewController {
    
    let myButton1 = PlusButton(with: ButtonViewModel(iconName: "plus.circle.fill", title: "建立"))
    
    let myButton2 = AvatarButton(with: ButtonViewModel(iconName: "pic", title: "你的活動"))

    let myButton3 = BellButton(with: ButtonViewModel(iconName: "bell.fill", title: ""))
    
    private lazy var buttonStack: UIStackView = {
        let v = UIStackView(arrangedSubviews: [myButton1, myButton2, myButton3])
        v.translatesAutoresizingMaskIntoConstraints = false
        v.axis                                      = .horizontal
        v.distribution                              = .equalSpacing
        v.spacing                                   = 0
        return v
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(buttonStack)
        setupConstraints()
    }

    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            buttonStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            buttonStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            buttonStack.widthAnchor.constraint(equalToConstant: 205),
            buttonStack.heightAnchor.constraint(equalToConstant: 32),
        
            myButton1.widthAnchor.constraint(equalToConstant: 63),
            
            myButton2.widthAnchor.constraint(equalToConstant: 90),
            
            myButton3.widthAnchor.constraint(equalToConstant: 32),
        ])
    }
}
