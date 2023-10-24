//
//  ContentView.swift
//  Tarik Tambang
//
//  Created by Muhammad Irfan on 23/10/23.
//

import SwiftUI

struct GameView: View {
    @State var playerOffset = 0
    
    var body: some View {
        ZStack {
            VStack{
                Button("Player 1") {
                    playerOffset = playerOffset - 10
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 80)
                .background(.blue)
                Spacer()
                Rectangle()
                    .frame(height: 12.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Spacer()
                   
                Button {
                    playerOffset = playerOffset + 10
                } label: {
                    Text("Player 2")
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 80)
                .background(.red)
                

            }
            
            VStack {
                Image(systemName: "face.smiling.inverse")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 50, height: 50)
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 10, height: 280)
                    .foregroundColor(.brown)
                Image(systemName: "face.smiling.inverse")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
                    .rotationEffect(.degrees(180))
            }.offset(y: CGFloat(playerOffset))
        }
    }
}

#Preview {
    GameView()
}
