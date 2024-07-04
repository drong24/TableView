//
//  TableLogic.swift
//  TableView
//
//  Created by Daisy Rong on 7/4/24.
//

import Foundation

struct TableLogic {
    
    var books = [
        BookItem(t: "To Kill a Mockingbird", a: "Harper Lee", d: "To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in July 1960 and became instantly successful. In the United States, it is widely read in high schools and middle schools. To Kill a Mockingbird has become a classic of modern American literature; a year after its release, it won the Pulitzer Prize. The plot and characters are loosely based on Lee's observations of her family, her neighbors and an event that occurred near her hometown of Monroeville, Alabama, in 1936, when she was ten."),
        BookItem(t: "The Hobbit", a: "John Ronald Reuel Tolkien", d: "The Hobbit is a series of three fantasy adventure films directed by Peter Jackson. The films are subtitled An Unexpected Journey (2012), The Desolation of Smaug (2013), and The Battle of the Five Armies (2014).[5] The films are based on J. R. R. Tolkien's 1937 novel The Hobbit, but much of the trilogy was inspired by the appendices to his 1954–55 The Lord of the Rings, which expand on the story told in The Hobbit. Additional material and new characters were created specially for the films. The series is a prequel to Jackson's The Lord of the Rings film trilogy."),
        BookItem(t: "Charlotte's Web", a: "E. B. White", d: "Charlotte's Web is a book of children's literature by American author E. B. White and illustrated by Garth Williams. It was published on October 15, 1952, by Harper & Brothers. The novel tells the story of a livestock pig named Wilbur and his friendship with a barn spider named Charlotte. When Wilbur is in danger of being slaughtered by the farmer, Charlotte writes messages in her web praising Wilbur to persuade the farmer to let him live."),
        BookItem(t: "Dune", a: "Frank Herbert", d: "Dune is a 1965 epic science fiction novel by American author Frank Herbert, originally published as two separate serials (1963–64 novel Dune World and 1965 novel Prophet of Dune) in Analog magazine. It tied with Roger Zelazny's This Immortal for the Hugo Award for Best Novel and won the inaugural Nebula Award for Best Novel in 1966. It is the first installment of the Dune Chronicles. It is one of the world's best-selling science fiction novels."),
        BookItem(t: "The House of the Scorpion", a: "Nancy Farmer", d: "The House of the Scorpion is a 2002 science fiction young adult novel by Nancy Farmer. It is set in the future and mostly takes place in Opium, a country which separates Aztlán (formerly Mexico) and the United States. The main character, Matteo Alacrán, or Matt, is a young clone of a drug lord of the same name, usually called 'El Patrón'. It is a story about the struggle to survive as a free individual and the search for a personal identity."),
        BookItem(t: "Shadow Children", a: "Margaret Peterson Haddix", d: "Shadow Children is a series of seven books by Margaret Peterson Haddix about a dystopian country which suffers food shortages due to a drought and the effects of the government's totalitarian attempts to control resources as a way to solidify its power. The Population Police enforce the government's Population Law, killing or imprisoning 'shadow children,' any child born after their first two siblings. In some cases, a parent may choose to forge a child's identification card so a shadow child can live a normal life.")
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
    
    func getDesc(row: Int) -> String {
        return books[row].desc
    }
    
}
