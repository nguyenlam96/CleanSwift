//
//  CreateOrderRouter.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/3/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

protocol CreateOrderRouterInput {
    
    func navigateToSomewhere()
    
}

class CreateOrderRouter {
    
    weak var viewController: CreateOrderViewController!
    
}

extension CreateOrderRouter: CreateOrderRouterInput {
    
    func navigateToSomewhere() {
        // teach ther router how to navigate to another scene
    }
    
}
