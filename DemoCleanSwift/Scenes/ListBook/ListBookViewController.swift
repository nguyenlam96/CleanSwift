//
//  ListBookViewController.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/4/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import UIKit

protocol ListBookViewControllerAction {
    func display(viewModel: [ListBookModel.ViewModel.FormattedBook])
}

class ListBookViewController: UIViewController {
    
    var interactor: ListBookInteractorAction?
    var router: ListBookRouterAction?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

}
