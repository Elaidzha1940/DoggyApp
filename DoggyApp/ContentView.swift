//  /*
//
//  Project: DoggyApp
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 22.08.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
           
            Image("doggy")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(width: 300, height: 300)
            
            Text("Pick a Dog")
                .font(.system(size: 30, weight: .bold, design: .monospaced))
            Text("Archi is clever")
                .font(.system(size: 15, weight: .semibold, design: .rounded))
                .foregroundColor(.secondary)
            
            HStack {
                Button {
                    //action
                } label: {
                    Text("Nice and ")
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .padding()
                        .foregroundColor(.white)
                }
                .background(Capsule()
                    .fill(LinearGradient(colors: [Color("bgb"), Color("bgbone")], startPoint: .trailing, endPoint: .leading)))
                Spacer()
            }
            
            Button {
                //action
            } label: {
                HStack {
                    Text("Get a food")
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                    Spacer()
                    Text("20 $")
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(.primary)
                }
                .padding()
            }
            .background(Capsule()
                .fill(LinearGradient(colors: [Color("line"), Color("lineone")], startPoint: .trailing, endPoint: .leading)))

        }
        .padding()
        .background(Color("bg"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
