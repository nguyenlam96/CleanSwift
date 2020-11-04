//
//  CreateOrderViewController.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/3/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import UIKit

protocol CreateOrderViewControllerInput {
    func displaySomething(viewModel: CreateOrderViewModel)
}

protocol CreateOrderViewControllerOutput {
    func doSomething(request: CreateOrderModel.CreateOrderRequest)
}

class CreateOrderViewController: UITableViewController {
    
    // text fields
    @IBOutlet var textFields: [UITextField]!
    @IBOutlet weak var shippingMethodTextField: UITextField!
    @IBOutlet var shippingMethodPicker: UIPickerView!
    
    @IBOutlet weak var expirationDateTextField: UITextField!
    @IBOutlet var expirationDatePicker: UIDatePicker!
    
    var output: CreateOrderViewControllerOutput!
    var router: CreateOrderRouter!

    override class func awakeFromNib() {
        super.awakeFromNib()
//        CreateOrderConfiguration.sharedInstance.configure(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.doSomethingOnLoad()
    }
    
    private func doSomethingOnLoad() {
        let request = CreateOrderModel.CreateOrderRequest()
        self.output.doSomething(request: request)
    }
    
    // IBActions:
    

}

extension CreateOrderViewController: CreateOrderViewControllerInput {
    
    func displaySomething(viewModel: CreateOrderViewModel) {
        // to display something
    }

}

extension CreateOrderViewController: CreateOrderPresenterOutput {
    
    

}

extension CreateOrderViewController: CreateOrderViewControllerOutput {
    
    func doSomething(request: CreateOrderModel.CreateOrderRequest) {
        
    }

}
