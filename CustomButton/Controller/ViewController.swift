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
        view.addSubview(buttonStack)
        setupConstraints()
        
        view.backgroundColor = .systemBackground
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

#if canImport(SwiftUI) && DEBUG
import SwiftUI
struct UIViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    let viewController: ViewController
    init(_ builder: @escaping () -> ViewController) {
        viewController = builder()
    }
    func makeUIViewController(context: Context) -> some UIViewController {
        viewController
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<UIViewControllerPreview<ViewController>>) {
        return
    }
}
#endif

#if canImport(SwiftUI) && DEBUG
import SwiftUI
let deviceNames: [String] = [
//    "iPhone SE",
    "iPhone 13 Pro Max",
//    "iPad Pro (11-inch)"
]
@available(iOS 13.0, *)
struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        ForEach(deviceNames, id: \.self) { deviceName in
            UIViewControllerPreview {
                ViewController()
            }.previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }.previewInterfaceOrientation(.portrait)
    }
}
#endif
