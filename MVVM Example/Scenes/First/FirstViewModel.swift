//
//  FirstViewModel.swift
//  MVVM Example
//
//  Created by Lucas Lima on 19.10.21.
//

import Foundation

final class FirstViewModel {
    private let navigation: FirstNavigation
    
    init(navigation: FirstNavigation) {
        self.navigation = navigation
    }
    
    func didTapPushButton() {
        navigation.showSecondScreen()
    }
    
    func didTapPresentButton() {
        navigation.presentSecondScreen()
    }
}
