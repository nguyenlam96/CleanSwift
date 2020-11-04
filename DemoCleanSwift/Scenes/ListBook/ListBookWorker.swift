//
//  ListBookWorker.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/4/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

final class ListBookWorker {
    
    static let shared = ListBookWorker()
    typealias Book = ListBookModel.Book
    
    static var introduction: String = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    
    private var books: [Book] = [
        
        Book(id: 1,
             author: ListBookModel.Author(id: 1,
                                     name: "James Cameron"),
             name: "Adventure in Viet Nam",
             isbn: "3453543bng32434",
             imageUrl: "",
             introduction: ListBookWorker.introduction),
        
        Book(id: 2,
             author: ListBookModel.Author(id: 1,
                                     name: "James John"),
             name: "Adventure in Colombia",
             isbn: "3453543bng32434",
             imageUrl: "",
             introduction: ListBookWorker.introduction),
        
        Book(id: 3,
             author: ListBookModel.Author(id: 1,
                                     name: "Lily the faker"),
             name: "Adventure in Canada",
             isbn: "3453543bng32434",
             imageUrl: "",
             introduction: ListBookWorker.introduction),
        
        Book(id: 4,
             author: ListBookModel.Author(id: 1,
                                     name: "Obama"),
             name: "Adventure in Thailand",
             isbn: "3453543bng32434",
             imageUrl: "",
             introduction: ListBookWorker.introduction)
        
        
    ]
    
    private init() {}
    
    func getListBook(category: Int) -> [Book] {
        return self.books
    }
    
}
