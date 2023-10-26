//
//  ContentView.swift
//  Roll The Dice Hackwich
//
//  Created by Phillip Mantatsky on 10/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var randomNumber = 0
    @State private var rotation = 0.0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.title)
            Image("pips \(randomNumber)")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center)
                            .rotationEffect(.degrees(rotation))
                .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                .font(.system(size: 72))
                .padding()
                .onTapGesture {
                    randomNumber = Int.random(in: 1...6)
                    withAnimation(.default) {
                                rotation += 360
                                        }
                }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
