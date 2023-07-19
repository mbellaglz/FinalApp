//
//  promptscomedy.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI
    
struct prompts_comedy: View {
    let comedy_prompts = ["promptsDive into the depths of the In a world where everyone's memories can be bought and sold, a character discovers a black market for stolen memories."]
    
    @State private var promptUser = ""
    
    var body: some View {
        
        let randComedyPrompt = comedy_prompts.randomElement()!
        VStack {
            ZStack{
                Image("prompts_screen")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Spacer()
                
                Text(promptUser)
                
                Spacer()
                Button(action: {promptUser = randComedyPrompt
                    
                }) {
                    Text("Generate")
                }
            }
        }
    }
    struct promptscomedy_Previews: PreviewProvider {
        static var previews: some View {
            prompts_comedy()
        }
    }
}
