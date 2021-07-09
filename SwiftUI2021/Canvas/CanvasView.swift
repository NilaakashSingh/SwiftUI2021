//
//  CanvasView.swift
//  SwiftUI2021
//
//  Created by Nilaakash Singh on 09/07/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct CanvasView: View {
    var body: some View {
        Canvas { context, size in
            context.stroke(
                Path(ellipseIn: CGRect(origin: .zero, size: size)),
                with: .color(.green),
                lineWidth: 4)
        }
        .frame(width: 300, height: 200)
        .border(Color.blue)
    }
}

@available(iOS 15.0, *)
struct CanvasView_Previews: PreviewProvider {
    static var previews: some View {
        CanvasView()
    }
}
