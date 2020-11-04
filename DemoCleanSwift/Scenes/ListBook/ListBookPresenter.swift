//
//  ListBookPresenter.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/4/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

protocol ListBookPresenterAction {
    func display(books: [ListBookModel.Book])
}

final class ListBookPresenter: ListBookPresenterAction {
    
    var view: ListBookViewController?
    
    func display(books: [ListBookModel.Book]) {
        
        let viewModel = ListBookModel.ViewModel(from: books)
        
        
    }
    
}
