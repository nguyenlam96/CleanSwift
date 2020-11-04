//
//  ListBookModel.swift
//  DemoCleanSwift
//
//  Created by Leo on 11/4/20.
//  Copyright © 2020 Leo. All rights reserved.
//

import Foundation

enum ListBookModel {
    
    struct Book {
        let id: Int
        let author: Author
        let name: String
        let isbn: String
        let imageUrl: String
        let introduction: String
    }

    struct Author {
        let id: Int
        let name: String
    }

    struct ListBookRequest {
        let categoryId: Int
    }

    struct ListBookResponse {
        let books: [Book]
    }
    
    struct ViewModel {
        
        let books: [FormattedBook]
        
        struct FormattedBook {
            
            let bookName: String
            let authorName: String
            let bookIntroduction: String
            let bookImageUrl: String
            
            init(from book: Book) {
                self.bookName = book.name
                self.authorName = book.author.name
                self.bookIntroduction = book.introduction
                self.bookImageUrl = book.imageUrl
            }
            
        }
        
        init(from books: [Book]) {
            self.books = books.map{ FormattedBook(from: $0) }
        }
        
    }
    
}

