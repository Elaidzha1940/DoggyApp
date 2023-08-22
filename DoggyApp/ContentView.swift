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
                .frame(width: 400, height: 500)
                .padding()
            
            Text("Hire a Dog")
                .f
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
