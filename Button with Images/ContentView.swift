//
//  ContentView.swift
//  Button with Images
//
//  Created by Hans Lehman on 2/11/22.
//

import SwiftUI




struct ContentView: View {
    //variables go here
    @State private var deckOfCards: [Image]=[]
    @State private var suits: [String]=["_of_diamonds","_of_spades","_of_clubs","_of_hearts"]
    @State private var cardNames: [String]=["2","3","4","5","6","7","8","9","10","jack","queen","king","ace"]
    func createDeck() {
        // used to use this
    }
    
   
    init(){
       // createDeck()
        
        print("There are\(deckOfCards.count) cards")
        print("There are\(suits.count) suits")
        print("There are\(cardNames.count) cards")
        for card in cardNames{
            for suit in suits {
                deckOfCards.append(Image("\(card)\(suit)"))
            }
        }
        print("There are\(deckOfCards.count) cards")
       
    }
   
    
    var body: some View {
       
        VStack{
            Text("Hello, world!")
                .padding()
            Text("Hello, world2!")
                .padding()
            Button(action: {
                deckOfCards.append(deckOfCards[0])
                deckOfCards.remove(at: 0)
            //label: deckOfCards[0]
                
                //code goes here
            }, label: {deckOfCards[0]
            })
            //Image:
        }
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
