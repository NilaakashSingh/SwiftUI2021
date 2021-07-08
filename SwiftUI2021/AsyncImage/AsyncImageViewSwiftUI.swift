//
//  AsyncImageViewSwiftUI.swift
//  SwiftUI2021
//
//  Created by Nilaakash Singh on 07/07/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct AsyncImageViewSwiftUI: View {
    var body: some View {
        ScrollView {
            VStack {
                // Aynsc image
                AsyncImage(url: URL(string: "https://pics.me.me/heil-hitler-steve-jobs-the-only-real-steve-jobs-28275639.png"))
                    .frame(width: 200, height: 200)
                    .padding()
                
                Divider()
                
                // Async Image with custom placeholder
                AsyncImage(url: URL(string: "https://pics.me.me/heil-hitler-steve-jobs-the-only-real-steve-jobs-28275639.png")) { image in
                    // We can set all image attributes here
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .padding(.top)
                .frame(width: 200, height: 200)
                
                Divider()
                
                // Async Image with more control in loading process
                AsyncImage(url: URL(string: "https://pics.me.me/heil-hitler-steve-jobs-the-only-real-steve-jobs-28275639.png")) { phase in
                    if let image = phase.image {
                        image // Displays the loaded image.
                    } else if phase.error != nil {
                        Color.red // Indicates an error.
                    } else {
                        Color.blue // Acts as a placeholder.
                    }
                }
                .padding()
                .frame(width: 200, height: 200)
            }
        }
        .navigationTitle("AsyncImage Variety")
        .navigationBarTitleDisplayMode(.inline)
    }
}

@available(iOS 15.0, *)
struct AsyncImageViewSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageViewSwiftUI()
    }
}
