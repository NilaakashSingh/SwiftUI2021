//
//  HomeView.swift
//  SwiftUI2021
//
//  Created by Nilaakash Singh on 07/07/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    NavigationLink(destination: TimelineViewSwiftUI()) {
                        Text("Timeline View")
                            .font(.headline)
                            .foregroundColor(.red)
                    }
                    .padding()
                    
                    NavigationLink(destination: AsyncImageViewSwiftUI()) {
                        Text("Async Image")
                            .font(.headline)
                            .foregroundColor(.yellow)
                    }
                    .padding()
                }
                .padding()
            }
            .navigationTitle("SwiftUI 2021")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
