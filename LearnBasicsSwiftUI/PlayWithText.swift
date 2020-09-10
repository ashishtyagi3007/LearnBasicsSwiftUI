//
//  PlayWithText.swift
//  LearnBasicsSwiftUI
//
//  Created by Ashish Tyagi on 29/08/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved. 
///  https://codeburst.io/playing-with-swiftui-part-1-61e763f68e38

import SwiftUI

struct PlayWithText: View {
    var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                Text("Ashish World")
                .font(.custom("Helvetica-Bold", size: 30))
                
                Text("Ashish Swift")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.red)
                    .padding(.all)
                
                Text("Hello World")
                    .foregroundColor(.gray)
                    .padding() // padding from all sides.
                    .padding() // padding on padding from all side
                    .background(Color.yellow)
                    
                    .padding()
                
                Text("SWIFT_UI")
                .padding()
                .border(Color.red, width: 1.0)
                
                .padding()

                Text("Hello World")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .padding()
                    .background(Color.green)
                    .padding()
                    .background(Color.red)
                    
                    .padding()

                Text("Hello World with kerning")
                    .kerning(5)
                // The amount of spacing to use between individual characters in this text.
                    
                .baselineOffset(-40) // The amount to shift the text vertically (up or down) in relation to its baseline.
                    .bold() // Bold Text
                    .italic() // Italic Text
                    .strikethrough(true, color: .red) // strikethrough and color for it.
                    .underline() // underline
                    .allowsTightening(true) //Sets whether text in this view can compress the space between characters when necessary to fit text in a line.
                    .opacity(0.8) //Transparency of this view.
                    .cornerRadius(1)
                
                .padding()
                
                Text("Text Hello World with ultra light weight font with custom green color, multiiline text with leading alignment, having infinite number of lines and padding from all the sides.")
                .kerning(5)
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor (Color.init(red: 25/255, green: 200/255, blue: 2/255))
                    .multilineTextAlignment(.center)
                .lineLimit(7)
                .lineSpacing(2)
                .padding(.all)
                    
                .padding()

            }
        }.padding()
        
        
    }
}

struct PlayWithText_Previews: PreviewProvider {
    static var previews: some View {
        PlayWithText()
    }
}
