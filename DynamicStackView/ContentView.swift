//
//  ContentView.swift
//  DynamicStackView
//
//  Created by Naufal Adli on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var isVertical = false
    var colors: [Color] = [.red, .green, .blue, .orange]
    @State var resetScroll = UUID()
    var body: some View {
        ZStack{
            GeometryReader{ geo in
                ScrollView(isVertical ? .vertical : .horizontal,showsIndicators: false){
                    DynamicStack(isVertical: $isVertical){
                        ForEach(colors, id: \.self){ color in
                            TextView(color: color)
                                .frame(width: geo.size.width, height: geo.size.height)
                        }
                    }
                }
                .id(resetScroll)
            }.scrollTargetBehavior(.paging)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Button(action: {
                    
                    isVertical.toggle()
                    resetScroll = UUID()
                    
                }, label: {
                    Text(isVertical ? "Switch to HStack" : "Switch to VStack")
                        .foregroundColor(.white)
                        .padding()
                        .background(.black,in: RoundedRectangle(cornerRadius: 10))
                })
            }
        }
    }
}

#Preview {
    ContentView()
}


