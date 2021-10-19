//
//  SecondCoordinator.swift
//  MVVM Example
//
//  Created by Lucas Lima on 19.10.21.
//

import UIKit

protocol SecondNavigation { }

final class SecondCoordinator: Coordinator {
    private unowned let navigationController: UINavigationController
    
    deinit {
        print("SecondCoordinator deallocated")
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func prepare() -> UIViewController {
        let viewModel = SecondViewModel(navigation: self)
        return SecondViewController(viewModel: viewModel)
    }
}

extension SecondCoordinator: SecondNavigation {
    
}
