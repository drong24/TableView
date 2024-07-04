//
//  TableLogic.swift
//  TableView
//
//  Created by Daisy Rong on 7/4/24.
//

import Foundation

struct TableLogic {
    
    var books = [
        BookItem(t: "To Kill a Mockingbird", a: "Harper Lee"),
        BookItem(t: "The Hobbit", a: "John Ronald Reuel Tolkien"),
        BookItem(t: "Charlotte's Web", a: "E. B. White"),
        BookItem(t: "Dune", a: "Frank Herbert")
    ]
    
    func getCount() -> Int {
        return books.count
    }
    
    func getTitle(row: Int) -> String {
        return books[row].title
    }
    
    func getAuthor(row: Int) -> String {
        return books[row].author
    }
    
}
