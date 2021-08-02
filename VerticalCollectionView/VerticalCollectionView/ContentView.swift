//
//  ContentView.swift
//  VerticalCollectionView
//
//  Created by Angelos Staboulis on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    let columns = [GridItem(.fixed(50)),GridItem(.fixed(50))]
    @State var selected:String!="0"
    var body: some View {
        Text("Vertical CollectionView in SwiftUI")
        ScrollView(.vertical, showsIndicators: true, content: {
            LazyVGrid(columns: columns, content: {
                ForEach(0..<100){item in
                    Text(String(item)).onTapGesture(perform: {
                        selected = String(item)
                    })
                }
            })
        })
        Text("selected value="+selected)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
