//
//  BookItem.swift
//  TableView
//
//  Created by Daisy Rong on 7/4/24.
//

import Foundation

struct BookItem {
    var title: String
    var author: String
    var desc: String
    
    init (t: String, a: String, d: String) {
        title = t
        author = a
        desc = d
    }
}
