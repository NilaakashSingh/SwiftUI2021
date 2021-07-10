//
//  HomeView.swift
//  SwiftUI2021
//
//  Created by Nilaakash Singh on 07/07/21.
//

import SwiftUI

@available(iOS 15.0, *)
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
                    
                    NavigationLink(destination: FocusStateDemoView()) {
                        Text("Focus State")
                            .font(.headline)
                            .foregroundColor(.green)
                    }
                    .padding()
                    
                    NavigationLink(destination: CanvasView()) {
                        Text("Canvas")
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                    .padding()
                    
                    NavigationLink(destination: MaterialTypeSwiftUI()) {
                        Text("Material")
                            .font(.headline)
                            .foregroundColor(.purple)
                    }
                    .padding()
                    
                    NavigationLink(destination: ListSwipeActionsSwiftUI()) {
                        Text("List SwipeActions, Refreshable, Badges")
                            .font(.headline)
                            .foregroundColor(.indigo)
                    }
                    .padding()
                }
                .padding()
            }
            .navigationTitle("SwiftUI 2021")
        }
    }
}

@available(iOS 15.0, *)
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
