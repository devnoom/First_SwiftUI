//
//  FirstCase.swift
//  First_SwiftUI
//
//  Created by MacBook Air on 22.05.24.
//
import SwiftUI

struct FirstCase: View {
    // MARK: - Properties
    @State var weLove = "We love property wrappers and closures"
    // MARK: - Body
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.yellow)
                .frame(width: 150, height: 260)
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image("guitar")
                        .resizable()
                        .frame(width: 80, height: 180)
                }
            }
            
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        Image("cyrcle")
                            .resizable()
                            .frame(width: 35, height: 35)
                        
                        Button(action: {
                            weLove = "Mar➕in"
                        }) {
                            Image("microfone")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .clipShape(Circle())
                        }
                        .frame(width: 35, height: 35)
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.leading, 10)
                .padding(.top, 10)
                
                VStack(alignment: .leading, spacing: 70) {
                    Text("ჯუზონები და რამე")
                        .font(.caption2)
                        .lineLimit(4)
                    
                    Text(weLove)
                        .font(.headline)
                        .padding(.trailing, 10)
                }
                .padding(.leading, 10)
                .padding(.top, 5)
                .foregroundColor(.white)
                
                Spacer()
            }
        }
        .frame(width: 150, height: 260)
    }
}
