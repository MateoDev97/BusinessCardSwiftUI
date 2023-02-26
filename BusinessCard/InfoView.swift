//
//  InfoView.swift
//  BusinessCard
//
//  Created by Mateo Ortiz on 26/02/23.
//

import SwiftUI

struct InfoView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color("RectangleColor"))
            .frame(height: 50)
            .padding(.all)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                }
            )
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", text: "Placeholder")
            .previewLayout(.sizeThatFits)
    }
}
