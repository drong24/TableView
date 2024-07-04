//
//  ViewController.swift
//  TableView
//
//  Created by Daisy Rong on 7/3/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableLogic = TableLogic()
    var bookTitle = ""
    var bookAuthor = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableLogic.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = tableLogic.getTitle(row: indexPath.row)
        content.secondaryText = tableLogic.getAuthor(row: indexPath.row)
        cell.contentConfiguration = content
        return cell
    }
    
    // table row on click function
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        bookTitle = tableLogic.getTitle(row: indexPath.row)
        bookAuthor = tableLogic.getAuthor(row: indexPath.row)
        self.performSegue(withIdentifier: "toBookDetails", sender: self)
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

