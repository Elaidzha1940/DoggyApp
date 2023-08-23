//  /*
//
//  Project: DoggyApp
//  File: CardVeiw.swift
//  Created by: Elaidzha Shchukin
//  Date: 23.08.2023
// 
//  Status: in progress | Decorated
//
//  */

import SwiftUI

struct CardVeiw: View {
    var person: String
    @State private var offset = CGSize.zero
    @State private var color: Color = Color("bgbone")
    
    var body: some View {
        
        ZStack {
            
            Image("doggy")
                .resizable()
                .cornerRadius(20)
                .frame(width: 290, height: 430)
                .border(color, width: 9.0)
                .cornerRadius(20)
            
            HStack {

            }
        }
        .offset(x: offset.width, y: offset.height * 0.5)
        .rotationEffect(.degrees(Double(offset .width / 50)))
        .gesture(
        DragGesture()
            .onChanged { gesture in
                offset = gesture.translation
            } .onEnded{ _ in
                withAnimation {
                    swipeCard(width: offset.width)
                }
            }
        )
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print("\(person) removed")
            offset = CGSize(width: -500, height: 0)
        default:
            offset = .zero
        }
    }
}

struct CardVeiw_Previews: PreviewProvider {
    static var previews: some View {
        CardVeiw(person: "image")
    }
}
