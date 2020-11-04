//
//  ListBookInteractor.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/4/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

protocol ListBookInteractorAction {
    func getListBook(category: String)
}

final class ListBookInteractor: ListBookInteractorAction {
    
    var presenter: ListBookPresenterAction?
    
    func getListBook(category: String) {
        
        guard let category = Int(category) else {
            // error
            return
        }
        
        let listBook = ListBookWorker.shared.getListBook(category: category)
        
        
    }
    
}
