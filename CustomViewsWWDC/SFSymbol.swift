//
//  SFSymbol.swift
//  CustomViewsWWDC
//
//  Created by Dominik Buraczewski on 12/11/2020.
//

import Foundation

struct SFSymbol {
    
    /// Symbol name.
    let name: String
 
    /// Path to symbol image.
    let imageName: String    
}

extension SFSymbol {
    
    /// Apple SF symbol
    static var Apple: SFSymbol {
        SFSymbol(name: "Apple", imageName: "applelogo")
    }
}
