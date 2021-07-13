//
//  SymbolVariantSwiftUI.swift
//  SwiftUI2021
//
//  Created by Nilaakash Singh on 13/07/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct SymbolVariantSwiftUI: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                Image(systemName: "person")
                Image(systemName: "folder")
                Image(systemName: "gearshape")
                Image(systemName: "list.bullet")
            }
            .symbolVariant(.slash)


            HStack(spacing: 20) {
                Image(systemName: "person")
                Image(systemName: "folder")
                Image(systemName: "gearshape")
                Image(systemName: "list.bullet")
            }
            .symbolVariant(.fill) // Shows filled variants, when available.
            
            Label("Airplane", systemImage: "airplane")
                .symbolVariant(.circle.fill)
            
            Image(systemName: "arrow.left")
                .symbolVariant(.square) // This shape takes precedence.
                .symbolVariant(.circle)
                .symbolVariant(.fill)
        }
    }
        .navigationTitle("Symbol Variants")
}


@available(iOS 15.0, *)
struct SymbolVariantSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        SymbolVariantSwiftUI()
    }
}
