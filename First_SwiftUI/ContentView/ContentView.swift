//
//  ContentView.swift
//  First_SwiftUI
//
//  Created by MacBook Air on 22.05.24.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonColor: Color = .blue
    @State private var backgroundImageName: String = "background"

    var body: some View {
       
        ZStack {
            Image(backgroundImageName)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("ზღაპრის ბოლო კეთილია")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                Spacer()
                HStack {
                    FirstCase()
                        .cornerRadius(25)
                    VStack {
                        SecondCase(backgroundImageName: $backgroundImageName)
                            .cornerRadius(25)
                        ThirdCase()
                            .cornerRadius(25)
                    }
                }
                Spacer()
                ScrollCase()
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        buttonColor = buttonColor == .blue ? .green : .blue
                        backgroundImageName = backgroundImageName == "background" ? "background1" : "background"
                    }) {
                        Image(systemName: "arrow.clockwise")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .padding(12.5)
                            .background(buttonColor)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}


