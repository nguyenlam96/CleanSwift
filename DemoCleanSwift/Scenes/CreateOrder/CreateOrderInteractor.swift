//
//  CreateOrderInteractor.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/3/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

protocol CreateOrderInteractorInput {
    func doSomething(request: CreateOrderModel.CreateOrderRequest)
}

protocol CreateOrderInteractorOutput {
    func presentSomething(response: CreateOrderModel.CreateOrderResponse)
}

class CreateOrderInteractor {
    
    var output: CreateOrderInteractorOutput!
    var worker: CreateOrderWorker!
    
}

extension CreateOrderInteractor: CreateOrderInteractorInput {
    
    func doSomething(request: CreateOrderModel.CreateOrderRequest) {
        
        // create worker to do work
        
        self.worker = CreateOrderWorker()
        self.worker.doSomeWork()
        
        // pass response to presenter
        let response = CreateOrderModel.CreateOrderResponse()
        self.output.presentSomething(response: response)
        
    }

}

extension CreateOrderInteractor: CreateOrderViewControllerOutput {
    
}
