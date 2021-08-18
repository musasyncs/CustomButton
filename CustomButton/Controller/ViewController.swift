//
//  ViewController.swift
//  CustomButton
//
//  Created by Ewen on 2021/8/17.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton1: PlusButton = {
        let viewModel = ButtonViewModel(iconName: "plus.circle.fill", title: "建立")
        let v = PlusButton(with: viewModel)
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor(red: 231/255, green: 243/255, blue: 255/255, alpha: 1)
        v.layer.cornerRadius = 16
        return v
    }()
    
    private let myButton2: AvatarButton = {
        let viewModel = ButtonViewModel(iconName: "pic", title: "你的活動")
        let v = AvatarButton(with: viewModel)
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor(red: 227/255, green: 230/255, blue: 234/255, alpha: 1)
        v.layer.cornerRadius = 16
        return v
    }()
    
    private let myButton3: BellButton = {
        let viewModel = ButtonViewModel(iconName: "bell.fill", title: "")
        let v = BellButton(with: viewModel)
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor(red: 227/255, green: 230/255, blue: 234/255, alpha: 1)
        v.layer.cornerRadius = 16
        return v
    }()
    
    private lazy var buttonStack: UIStackView = {
        let v = UIStackView(arrangedSubviews: [myButton1, myButton2, myButton3])
        v.translatesAutoresizingMaskIntoConstraints = false
        v.axis = .horizontal
        v.distribution = .equalSpacing
        v.spacing = 10
        return v
    }()
    
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(buttonStack)
        setupConstraints()
    }
    
    
    // MARK: - setupConstraints
    private func setupConstraints() {
        // buttonStack
        NSLayoutConstraint.activate([
            buttonStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            NSLayoutConstraint(item: buttonStack, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 205),
            NSLayoutConstraint(item: buttonStack, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 32),
        ])
        
        // myButton1
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: myButton1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 63),
        ])
        
        // myButton2
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: myButton2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 90),
        ])
        
        // myButton3
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: myButton3, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 32),
        ])
    }
}
