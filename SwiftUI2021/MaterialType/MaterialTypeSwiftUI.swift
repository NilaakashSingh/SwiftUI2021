//
//  MaterialTypeSwiftUI.swift
//  SwiftUI2021
//
//  Created by Nilaakash Singh on 09/07/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct MaterialTypeSwiftUI: View {
    var body: some View {
        ZStack {
            Image("parrots")
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                Label("Flag", systemImage: "flag.fill")
                    .padding()
                    .background(.regularMaterial)
                
                // Material with custom background
                Label("Flag", systemImage: "flag.fill")
                    .foregroundColor(.blue)
                    .padding()
                    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 8))
            }
        }
    }
}

@available(iOS 15.0, *)
struct MaterialTypeSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        MaterialTypeSwiftUI()
    }
}
