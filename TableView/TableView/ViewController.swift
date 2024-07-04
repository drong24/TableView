//
//  ViewController.swift
//  TableView
//
//  Created by Daisy Rong on 7/3/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var bookTitle = ""
    var bookAuthor = ""
    
    var books = [
        BookItem(t: "To Kill a Mockingbird", a: "Harper Lee"),
        BookItem(t: "The Hobbit", a: "John Ronald Reuel Tolkien"),
        BookItem(t: "Charlotte's Web", a: "E. B. White"),
        BookItem(t: "Dune", a: "Frank Herbert")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = books[indexPath.row].title
        content.secondaryText = books[indexPath.row].author
        cell.contentConfiguration = content
        return cell
    }
    
    // table row on click
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("clicked" + books[indexPath.row].title)
        bookTitle = books[indexPath.row].title
        bookAuthor = books[indexPath.row].author
        self.performSegue(withIdentifier: "toBookDetails", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "toBookDetails") {
            let navigation = segue.destination as! BookDetailsView
            navigation.bookAuthor = bookAuthor
            navigation.bookTitle = bookTitle
        }
    }


}

