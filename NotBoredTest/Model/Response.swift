import Foundation

class Response: Decodable {
    //MARK: Atributos
    let activity:String
    let type:String
    let participants:String
    let price:String
    let link:String
    let key:String
    let accessibility:String
    
    //MARK: Constructor
    init (activity:String, type:String, participants:String, price:String, link:String,  key:String, accessibility:String) {
        
        self.activity = activity
        self.type = type
        self.participants = participants
        self.price = price
        self.link = link
        self.key = key
        self.accessibility = accessibility
    }
    
}
