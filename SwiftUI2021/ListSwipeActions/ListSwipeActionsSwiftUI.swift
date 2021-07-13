//
//  ListSwipeActionsSwiftUI.swift
//  SwiftUI2021
//
//  Created by Nilaakash Singh on 10/07/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct Movie: Identifiable {
    var id = UUID()
    var title:String
}

@available(iOS 15.0, *)
struct ListSwipeActionsSwiftUI: View {
    @State private var text = "" 
    @State var movies = [
        Movie(title: "Episode IV – A New Hope"),
        Movie(title: "Episode V – The Empire Strikes Back"),
        Movie(title: "Episode VI – Return of the Jedi"),
        Movie(title: "Star Wars: The Clone Wars"),
        Movie(title: "Rogue One"),
        Movie(title: "Solo"),
        Movie(title: "The Mandalorian")
    ]
    
    var body: some View {
        List {
            ForEach(movies, id: \.id) { movie in
                VStack {
                    Text(movie.title)
                        .padding()
                }
                .listRowSeparatorTint(.yellow)
                .badge("2")
                .swipeActions(edge: .leading, allowsFullSwipe: true) {
                    Button(action: {}, label: {
                        Label("Unread", systemImage: "envelope.badge")
                    })
                        .tint(.blue)
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    Button(action: {}, label: {
                        Label("Delete", systemImage: "trash")
                    })
                    Button(action: {}, label: {
                        Label("Flag", systemImage: "flag")
                    })
                        .tint(.orange)
                }
            }
        }
        .listStyle(.grouped)
        .navigationTitle("List View")
        .navigationBarTitleDisplayMode(.inline)
        .refreshable {}
        .searchable(text: $text)
    }
}

@available(iOS 15.0, *)
struct ListSwipeActionsSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListSwipeActionsSwiftUI()
                //.previewInterfaceOrientation(.landscapeRight)
        }
    }
}
