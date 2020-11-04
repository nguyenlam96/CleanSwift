//
//  CreateOrderPresenter.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/3/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

protocol CreateOrderPresenterInput {
    
    func presentSomething(response: CreateOrderModel)
    
}

protocol CreateOrderPresenterOutput: class {
    
    func displaySomething(viewModel: CreateOrderViewModel)
    
}

class CreateOrderPresenter {
    
    weak var output: CreateOrderPresenterOutput!
    
}

extension CreateOrderPresenter: CreateOrderPresenterInput {
    
    func presentSomething(response: CreateOrderModel) {
        
    }
    
}

extension CreateOrderPresenter: CreateOrderInteractorOutput {
    
    func presentSomething(response: CreateOrderModel.CreateOrderResponse) {
        
    }
 
}
