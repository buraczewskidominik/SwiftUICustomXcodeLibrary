//
//  ContentView.swift
//  CustomViewsWWDC
//
//  Created by Dominik Buraczewski on 12/11/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Adding custom views to Xcode library")
                .padding()
                .multilineTextAlignment(.center)
            SFSymbolView(sfSymbol: /*@START_MENU_TOKEN@*/SFSymbol(name: "Apple", imageName: "applelogo")/*@END_MENU_TOKEN@*/)
            SFSymbolView(sfSymbol: /*@START_MENU_TOKEN@*/SFSymbol(name: "Apple", imageName: "applelogo")/*@END_MENU_TOKEN@*/, isRound: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
