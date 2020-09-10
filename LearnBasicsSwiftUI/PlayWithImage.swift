//
//  PlayWithImage.swift
//  LearnBasicsSwiftUI
//
//  Created by Ashish Tyagi on 30/08/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct PlayWithImage: View {
    var body: some View {
        VStack {
            Image(systemName: "faceid")
                .font(.headline)
            
                .padding()
            
            Image(systemName: "faceid").foregroundColor(.blue).font(.system(size: 100))
            
            .padding()

            Image(systemName: "person.icloud.fill").blur(radius: 1)
                .foregroundColor(.yellow).font(.largeTitle)
            
            .padding()
            
            Image("horizontal1")
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            
            
        }
        
    }
}

struct PlayWithImage_Previews: PreviewProvider {
    static var previews: some View {
        PlayWithImage()
    }
}
