//
//  BookDetailsView.swift
//  TableView
//
//  Created by Daisy Rong on 7/4/24.
//

import UIKit

class BookDetailsView: UIViewController {
    
    @IBOutlet weak var BookImage: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var AuthorLabel: UILabel!
    
    var bookTitle = ""
    var bookAuthor = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TitleLabel.text = bookTitle
        AuthorLabel.text = bookAuthor
        BookImage.image = UIImage(named: bookTitle)
    }
    


}
