//
//  IconButton.swift
//  CustomButton
//
//  Created by Ewen on 2021/8/17.
//

import UIKit

class PlusButton: UIButton {
    private let iconImageView: UIImageView = {
        let v = UIImageView()
        v.contentMode   = .scaleAspectFit
        v.tintColor     = Colors.FBBlue
        return v
    }()
    
    private let buttonLabel: UILabel = {
        let v = UILabel()
        v.textAlignment = .center
        v.textColor     = Colors.FBBlue
        v.font          = UIFont.systemFont(ofSize: 12, weight: .regular)
        return v
    }()
    
    private lazy var subStack: UIStackView = {
        let v = UIStackView(arrangedSubviews: [iconImageView, buttonLabel])
        v.translatesAutoresizingMaskIntoConstraints = false
        v.axis                                      = .horizontal
        v.distribution                              = .equalSpacing
        v.spacing                                   = 0
        return v
    }()
    
    
    init(with viewModel: ButtonViewModel) {
        super.init(frame: .zero)
        iconImageView.image = UIImage(systemName: viewModel.iconName)
        buttonLabel.text    = viewModel.title
        
        addSubview(subStack)
        setupConstraints()
        
        backgroundColor     = Colors.lightBlue
        layer.cornerRadius  = 16
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            subStack.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            subStack.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
            subStack.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            subStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            iconImageView.widthAnchor.constraint(equalTo: iconImageView.heightAnchor, multiplier: 1),
        ])
    }
}
