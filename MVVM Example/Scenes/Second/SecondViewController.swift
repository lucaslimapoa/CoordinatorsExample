//
//  SecondViewController.swift
//  MVVM Example
//
//  Created by Lucas Lima on 19.10.21.
//

import Foundation
import UIKit

final class SecondViewController: UIViewController {
    private let viewModel: SecondViewModel
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Second Screen"
        return label
    }()
    
    init(viewModel: SecondViewModel) {
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
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }    
}
