//
//  promptsfantasy.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct promptsfantasy: View {
    let fantasy_prompts = ["promptsDive into the depths of the In a world where everyone's memories can be bought and sold, a character discovers a black market for stolen memories."]
    
    @State private var promptUser = ""
    
    var body: some View {
        
        let randFantasyPrompt = fantasy_prompts.randomElement()!
        VStack {
            ZStack{
                Image("prompts_screen")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Spacer()
                
                Text(promptUser)
                
                Spacer()
                Button(action: {promptUser = randFantasyPrompt
                    
                }) {
                    Text("Generate")

                }
            }
        }
    }
    
    struct promptsfantasy_Previews: PreviewProvider {
        static var previews: some View {
            promptsfantasy()
        }
    }
}
