//
//  ContentView.swift
//  Roll The Dice Hackwich
//
//  Created by Phillip Mantatsky on 10/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var randomNumber = 0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.title)
            Image("pips \(randomNumber)")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: .center)
                .font(.system(size: 72))
                .padding()
                .onTapGesture {
                    randomNumber = Int.random(in: 1...6)
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
