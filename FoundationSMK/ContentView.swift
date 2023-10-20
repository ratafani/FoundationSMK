//
//  ContentView.swift
//  FoundationSMK
//
//  Created by Muhammad Tafani Rabbani on 19/10/23.
//

import SwiftUI

struct ContentView: View {
    var buttonHeight: Double = 80
    
    @State var ofset = 0
    
    var body: some View {
        ZStack{
            background
            players
        }
    }
    
    var players : some View{
        VStack(spacing: 0) {
            Image(systemName: "face.smiling.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                .padding(5)
                .background(.background)
                .cornerRadius(50 / 2 + 5)
            
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 10, height: 280)
                .foregroundColor(.brown)
            
            Image(systemName: "face.smiling.fill")
                .resizable()
                .rotationEffect(.degrees(180))
                .frame(width: 50, height: 50)
                .foregroundColor(.red)
                .frame(width: 50, height: 50)
                .padding(5)
                .background(.background)
                .cornerRadius(50 / 2 + 5)
        }.offset(y:CGFloat(ofset))
    }
    
    var background : some View{
        //background
        VStack {
            //TODO: button 1
            Button(action: {
                withAnimation {
                    ofset = ofset - 10
                }
                
            }) {
                VStack {
                    Text("Player 1")
                        .fontWeight(.black)
                        .padding()
                    
                }
                .frame(maxWidth: .infinity, maxHeight: buttonHeight)
                .background(.blue)
            }
            .buttonStyle(.plain)
            .frame(height: buttonHeight)
            
            Spacer()
            
            Rectangle()
                .frame(height: 12)
                .foregroundColor(.red)
                .colorInvert()
            
            Spacer()
            
            Button(action: {
                withAnimation {
                    ofset = ofset + 10
                }
            }) {
                VStack {
                    
                    Text("Player 2")
                        .fontWeight(.black)
                        .padding()
                }
                .frame(maxWidth: .infinity, maxHeight: buttonHeight)
                .background(.red)
            }
            .buttonStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
