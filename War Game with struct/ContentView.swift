//
//  ContentView.swift
//  Button with Images
//
//  Created by Hans Lehman on 2/16/22.
//

import SwiftUI

class DoOperations: NSObject, ObservableObject{
    @Published var deckOfCards:[Card]=[]
    struct Card {
    var pictureOfCard: Image
    var name: String
    var rank: Int
    var suit: String
    }
    let suits: [String]=["_of_diamonds","_of_spades","_of_clubs","_of_hearts"]
    let cardNames: [String]=["2","3","4","5","6","7","8","9","10","jack","queen","king","ace"]
    let ranks: [Int] = [2,3,4,5,6,7,8,9,10,11,12,13,14]
    override init(){
        
        super.init()
        for card in cardNames{
            for suit in suits {
                deckOfCards.append(Card(pictureOfCard: Image("\(card)\(suit)"), name: card, rank: ranks[cardNames.firstIndex(of: card)!], suit: suit))
            }
            
        }
        
    }
}
//Image("\(card)\(suit)")
struct ContentView: View {
    //variables go here
    @StateObject var op = DoOperations()

    
    var body: some View {
       
        VStack{
            Text("Hello, world!")
                .padding()
            Text("Hello, world2!")
                .padding()
            op.deckOfCards[0].pictureOfCard.imageScale(.large)
            
            Button{
                op.deckOfCards.append(op.deckOfCards[0])
                op.deckOfCards.remove(at: 0)
                
            } label:{ Text("Flip Images")
        }
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
