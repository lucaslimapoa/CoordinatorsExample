//
//  FirstViewController.swift
//  CoordinatorsExample
//
//  Created by Lucas Lima on 19.10.21.
//

import UIKit

final class FirstViewController: UIViewController {
    private let viewModel: FirstViewModel
    
    private lazy var pushButton: UIButton = {
        let button = UIButton()
        button.setTitle("Push Second Screen", for: .normal)
        button.addTarget(self, action: #selector(pushButtonTapped), for: .touchUpInside)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    private lazy var presentButton: UIButton = {
        let button = UIButton()
        button.setTitle("Present Second Screen", for: .normal)
        button.addTarget(self, action: #selector(presentButtonTapped), for: .touchUpInside)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    init(viewModel: FirstViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layoutButton()
    }
    
    private func layoutButton() {
        let stackView = UIStackView(arrangedSubviews: [pushButton, presentButton])
        stackView.axis = .vertical
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
        
    @objc private func pushButtonTapped() {
        viewModel.didTapPushButton()
    }
    
    @objc private func presentButtonTapped() {
        viewModel.didTapPresentButton()
    }
}
