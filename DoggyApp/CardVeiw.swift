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
    
    var icon: String
    @State private var offset = CGSize.zero
    @State private var color: Color = Color("bgbone")
    @State private var image: Image = Image("doggy")
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 290, height: 430)
                .cornerRadius(20)
                .foregroundColor(.gray.opacity(0.6))
                .cornerRadius(10)
            
            HStack {
                Image("doggyone")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .frame(width: 280, height: 400)

               
            }
        }
        .offset(x: offset.width, y: offset.height * 0.5)
        .rotationEffect(.degrees(Double(offset .width / 50)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                    withAnimation {
                        changeImage(width: offset.width)
                    }
                } .onEnded{ _ in
                    withAnimation {
                        swipeCard(width: offset.width)
                        changeImage(width: offset.width)
                    }
                }
        )
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print("\(icon) removed")
            offset = CGSize(width: -500, height: 0)
        case 150...500:
            print("\(icon) added")
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
    
    func changeImage(width: CGFloat) {
        switch width {
        case -500...(-130):
            image = Image("doggyone")
        case 130...500:
            image = Image("doggytwo")
        default:
            image = Image("doggy")
            
        }
    }
}

struct CardVeiw_Previews: PreviewProvider {
    static var previews: some View {
        CardVeiw(icon: "icon")
    }
}
