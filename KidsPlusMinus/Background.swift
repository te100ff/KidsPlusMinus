//
//  Background.swift
//  KidsCount
//
//  Created by Stanislav Testov on 16.10.2022.
//

import SwiftUI

struct Background: View {
    var body: some View {
        LinearGradient(
            stops: [
                .init(color: .yellow, location: 0.65),
                .init(color: .green, location: 0.95)
            ],
            startPoint: .top,
            endPoint: .bottom
        )
            .ignoresSafeArea()
            .backgroundStyle(.ultraThickMaterial)
       
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
