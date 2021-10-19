//
//  FirstCoordinator.swift
//  CoordinatorsExample
//
//  Created by Lucas Lima on 19.10.21.
//

import Foundation
import UIKit

protocol Coordinator {
    func prepare() -> UIViewController
}

protocol FirstNavigation {
    func showSecondScreen()
    func presentSecondScreen()
}

final class FirstCoordinator: Coordinator {
    private unowned let navigationController: UINavigationController
    
    deinit {
        print("InitialCoordinator deallocated")
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func prepare() -> UIViewController {
        let viewModel = FirstViewModel(navigation: self)
        return FirstViewController(viewModel: viewModel)
    }
}

extension FirstCoordinator: FirstNavigation {
    func showSecondScreen() {
        let secondCoordinator = SecondCoordinator(navigationController: navigationController)
        navigationController.pushViewController(secondCoordinator.prepare(), animated: true)
    }
    
    func presentSecondScreen() {
        let secondCoordinator = SecondCoordinator(navigationController: navigationController)
        navigationController.present(secondCoordinator.prepare(), animated: true)
    }
}
