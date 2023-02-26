//
//  ContentView.swift
//  BusinessCard
//
//  Created by Mateo Ortiz on 26/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("CardBackgroundColor")
                .ignoresSafeArea(.all)
            
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color("BlackWhiteColor"), lineWidth: 5))
                Text("Mateo Ortiz")
                    .font(Font.custom("NotoSans-Regular", size: 40))
                    .bold()
                Text("Senior iOS Engineer")
                    .font(.system(size: 20))
                
                Divider()
                
                InfoView(imageName: "phone.fill", text: "+1 239 694 592")
                InfoView(imageName: "envelope.fill", text: "mateo972000@gmail.com")
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

