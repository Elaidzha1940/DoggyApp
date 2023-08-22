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

let blueGradient = LinearGradient(colors: [Color("line"), Color("lineone")], startPoint: .trailing, endPoint: .leading)

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
            .padding(.vertical)
            
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
                .fill(blueGradient))
            
            Text("Plans")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
            
            HStack {
                
                TitleView(description: "Partial Responsibility", systemIcon: "heart.slash", period: "Monthly", cost: "200 $")
                
                TitleView(description: "Full Responsibility", systemIcon: "heart", period: "Yearly", cost: "100 $")
            }
            
        }
        .padding()
        .background(Color("bg").opacity(0.6))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TitleView: View {
    
    let description: String
    let systemIcon: String
    let period:  String
    let cost: String
    
    var body: some View {
        
        VStack {
            VStack {
                Text(description)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                
                HStack {
                    Image(systemName: systemIcon)
                        .padding()
                        .background(Circle()
                            .fill(blueGradient))
                        .offset(.init(width: -10, height: 0))
                    Text(period)
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                    
                    Spacer()
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20)
                .fill(Color.white))
            
            Button {
                //action
            } label: {
                Text(cost)
                    .padding()
                
            }
            .background(Circle()
                .fill(blueGradient))
        }
        .frame(maxWidth: .infinity)
    }
}
