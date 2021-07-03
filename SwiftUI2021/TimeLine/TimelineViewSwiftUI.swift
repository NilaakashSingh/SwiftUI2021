//
//  TimelineViewSwiftUI.swift
//  SwiftUI2021
//
//  Created by Alogorist on 12/06/21.
//

import SwiftUI

struct TimelineViewSwiftUI: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    if #available(iOS 15.0, *) {
                        timeline(heading: "Time Line View")
                            .padding(.bottom)
                    }
                    
                }
                .navigationTitle(Text("SwiftUI2021"))
            }
        }
    }
    
    private func timeline(heading: String) -> some View {
        VStack {
            header(string: heading)
            if #available(iOS 15.0, *) {
                TimelineView(PeriodicTimelineSchedule(from: Date(), by: 1.0)) { context in
                    Text("\(context.date)")
                        .foregroundColor(Color.indigo)
                }
            } else {
                // Fallback on earlier versions
            }
        }
    }
    
    private func header(string: String) -> some View {
        HStack {
            if #available(iOS 15.0, *) {
                Text(string)
                    .font(.headline)
                    .foregroundColor(Color.teal)
                Spacer()
            }
        }
        .padding([.leading, .bottom])
    }
}

struct TimelineViewSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        TimelineViewSwiftUI()
    }
}
