//
//  ContentView.swift
//  First_SwiftUI
//
//  Created by MacBook Air on 22.05.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("ზღაპრის ბოლო კეთილია").font(.title).padding()
            Spacer()
            HStack {
                FirstCase().cornerRadius(25)
                VStack {
                    SecondCase().cornerRadius(25)
                    ThirdCase().cornerRadius(25)
                }
            }
            Spacer()
            ScrollCase()
           
        }
       
    }
}

#Preview {
    ContentView()
}


