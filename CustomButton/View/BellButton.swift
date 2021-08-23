//
//  BellButton.swift
//  CustomButton
//
//  Created by Ewen on 2021/8/18.
//

import UIKit

class BellButton: UIButton {
    
    private let iconImageView: UIImageView = {
        let v = UIImageView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.contentMode                               = .scaleAspectFit
        v.tintColor                                 = .black
        return v
    }()

    
    init(with viewModel: ButtonViewModel) {
        super.init(frame: .zero)
        
        setupView(with: viewModel)
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupView(with viewModel: ButtonViewModel) {
        iconImageView.image = UIImage(systemName: viewModel.iconName)
        
        addSubview(iconImageView)
        setupConstraints()
        
        backgroundColor    = Colors.lightGray
        layer.cornerRadius = 16
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 8),
            iconImageView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -8),
            iconImageView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            iconImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
}
