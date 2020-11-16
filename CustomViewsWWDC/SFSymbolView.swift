//
//  SFSymbolView.swift
//  CustomViewsWWDC
//
//  Created by Dominik Buraczewski on 12/11/2020.
//

import SwiftUI

struct SFSymbolView: View {
    
    private let frameSize: CGFloat = 50
    private let roundedCornerRadius: CGFloat = 25
    
    var sfSymbol: SFSymbol
    
    var isRound: Bool = false
    
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: sfSymbol.imageName)
                .padding(.all, 10)
                .decorateWithShadow()
            Text(sfSymbol.name)
        }
        .frame(width: frameSize, height: frameSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .foregroundColor(.blue)
        .padding()
        .background(Color.black)
        .cornerRadius(isRound ? roundedCornerRadius : 0)
    }
}

struct SFSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolView(sfSymbol: SFSymbol.Apple, isRound: false)
    }
}

struct SFSymbolLibrary: LibraryContentProvider {
    
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(
            SFSymbolView(sfSymbol: SFSymbol.Apple),
            title: "SF Symbol View"
        )
        LibraryItem(
            SFSymbolView(sfSymbol: SFSymbol.Apple, isRound: true),
            title: "SF Symbol View Rounded",
            category: .control
        )
    }
    
    @LibraryContentBuilder
    func modifiers(base: AnyView) -> [LibraryItem] {
        LibraryItem(base.decorateWithShadow(), category: .effect)
    }
}

extension View {
    
    /// Decorate the view with foreground color and shadow.
    ///
    /// - Parameter color: the color of the foreground and shadow.
    /// - Returns the decorated view.
    func decorateWithShadow(color: Color = .white) -> some View {
        self
            .foregroundColor(color)
            .shadow(color: color, radius: 20, x: 0, y: 0)
    }
}
