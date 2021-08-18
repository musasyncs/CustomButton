//
//  IconButton.swift
//  CustomButton
//
//  Created by Ewen on 2021/8/17.
//

import UIKit

class PlusButton: UIButton {
    
    // MARK: - 按鈕內部UI元件
    private let iconImageView: UIImageView = {
        let v = UIImageView()
        v.contentMode = .scaleAspectFit
        v.tintColor = UIColor(red: 8/255, green: 108/255, blue: 229/255, alpha: 1)
        return v
    }()
    
    private let buttonLabel: UILabel = {
        let v = UILabel()
        v.textAlignment = .center
        v.textColor = UIColor(red: 8/255, green: 108/255, blue: 229/255, alpha: 1)
        v.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return v
    }()
    
    private lazy var subStack: UIStackView = {
        let v = UIStackView(arrangedSubviews: [iconImageView, buttonLabel])
        v.translatesAutoresizingMaskIntoConstraints = false
        v.axis = .horizontal
        v.distribution = .equalSpacing
        return v
    }()
    
    
    // MARK: - initializer
    init(with viewModel: ButtonViewModel) {
        super.init(frame: .zero)
        
        setupView(with: viewModel)
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - private functions
    private func setupView(with viewModel: ButtonViewModel) {
        iconImageView.image = UIImage(systemName: viewModel.iconName)
        buttonLabel.text = viewModel.title
        
        addSubview(subStack)
        setupConstraints()
        
        backgroundColor = UIColor(red: 231/255, green: 243/255, blue: 255/255, alpha: 1)
        layer.cornerRadius = 16
    }
    
    private func setupConstraints() {
        // subStack
        NSLayoutConstraint.activate([
            subStack.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 8),
            subStack.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -9),
            subStack.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            subStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
}
