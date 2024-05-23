//
//  ThirdCase.swift
//  First_SwiftUI
//
//  Created by MacBook Air on 22.05.24.
//

import SwiftUI

struct ThirdCase: View {
        var body: some View {
            ZStack {
                Rectangle()
                    .frame(width: 150, height: 125)
                    .foregroundColor(Color.purple)
                
                VStack(alignment: .leading, spacing: -10) {
                    HStack {
                        ZStack(alignment: .topLeading) {
                            Image("cyrcle")
                                .resizable()
                                .frame(width: 35, height: 35)
                            
                            Button(action: {
                                // რაიცი რაში დამჭირდება
                            }) {
                                Image("user")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .clipShape(Circle())
                            }
                            .frame(width: 35, height: 35)
                        }
                        Spacer()
                    }
                    .padding([.top], -45)
                    
                    Text("ცეცხლოვანი სიახლეები")
                        .font(.caption2)
                        .foregroundColor(.white)
                        .padding(.top, 5)
                        .padding(.trailing, 30)
                }
                .padding([.leading, .top], 10)
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image("trumpet")
                            .resizable()
                            .frame(width: 80, height: 90)
                    }
                }
            }
            .frame(width: 150, height: 125)
        }
    }

