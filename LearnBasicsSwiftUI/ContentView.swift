//
//  ContentView.swift
//  LearnBasicsSwiftUI
//
//  Created by Ashish Tyagi on 29/08/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct Collection {
    var id: Int
    var title, imageUrl: String
}

struct CollectionScrollView: View {
    
    let collectionScroll: Collection
    
    var body: some View {
        VStack {
//            Image("\(collectionScroll.imageUrl)")
//                .resizable()
//                .cornerRadius(12)
//                .frame(width: 80, height: 80)
            Text(collectionScroll.title)
                .font(.subheadline)
                .fontWeight(.bold)
                .padding()
                 .overlay(
                  RoundedRectangle(cornerRadius: 0)
                    .stroke(Color.blue, lineWidth: 1)
            )
        }
    }
}

struct ContentView: View {
    
    let collectionScrollArray:[Collection] = [
        Collection(id: 0, title: "Good Stuff", imageUrl: "horizontal0"),
        Collection(id: 1, title: "Tech Stuff", imageUrl: "horizontal1"),
        Collection(id: 2, title: "Code Stuff", imageUrl: "horizontal2"),
        Collection(id: 3, title: "Photo", imageUrl: "horizontal3"),
        Collection(id: 4, title: "Swift_UI", imageUrl: "horizontal4"),
        Collection(id: 5, title: "Code Stuff", imageUrl: "horizontal2"),
        Collection(id: 6, title: "Photo", imageUrl: "horizontal3"),
        Collection(id: 7, title: "Swift_UI", imageUrl: "horizontal4")
    ]
    

    var body: some View {
        NavigationView{
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(collectionScrollArray, id: \.id ){ result in
                        CollectionScrollView(collectionScroll: result)
                    }
                };
                Spacer()
               
            }.padding(.leading,20)
            .navigationBarTitle("Scroll!")
        }
  }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
