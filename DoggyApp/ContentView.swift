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
            
            Text("Hire a Dog")
                .font(.system(size: 30, weight: .bold, design: .monospaced))
            Text("Archi is clever")
                .font(.system(size: 15, weight: .semibold, design: .rounded))
                .foregroundColor(.secondary)
            
            HStack {
                Button {
                    //action
                } label: {
                    Text("Nice and ")
                        .font(.system(size: 25, weight: .semibold, design: .rounded))
                        .padding()
                }
                .background(Capsule()
                    .fill(LinearGradient(colors: [Color("bgb"), Color("bgbone")], startPoint: .trailing, endPoint: .leading)))
                Spacer()
            }
            .padding()
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
