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
                Path(ellipseIn: CGRect(origin: CGPoint(x: 10, y: 10),
                                       size: CGSize(width: size.width - 40,
                                                    height: size.width - 40))),
                with: .color(.black),
                style: .init(lineWidth: 8, dashPhase: 2))
            
            
            let halfSize = size.applying(CGAffineTransform(scaleX: 0.5, y: 0.5))
            context.clip(to: Path(CGRect(origin: CGPoint(x: 10, y: 10),
                                         size: halfSize)))
            context.fill(
                Path(ellipseIn: CGRect(origin: CGPoint(x: 7, y: 7), size: size)),
                with: .color(.teal))
        }
        .navigationTitle("Canvas")
        .navigationBarTitleDisplayMode(.inline)
        .frame(width: 400, height: 400)
    }
}

@available(iOS 15.0, *)
struct CanvasView_Previews: PreviewProvider {
    static var previews: some View {
        CanvasView()
    }
}
