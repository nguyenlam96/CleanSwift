//
//  CreateOrderConfiguration.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/3/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

class CreateOrderConfiguration {
    
    static let sharedInstance = CreateOrderConfiguration()
    
    private init() {}
    
    func configure(_ viewController: CreateOrderViewController) {
        
        let router = CreateOrderRouter()
        router.viewController = viewController
        
        let presenter = CreateOrderPresenter()
        presenter.output = viewController
        
        let interactor = CreateOrderInteractor()
        interactor.output = presenter
        
        viewController.output = interactor
        viewController.router = router
        
    }
    
}
