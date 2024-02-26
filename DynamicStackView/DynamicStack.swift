//
//  DynamicStack.swift
//  DynamicStackView
//
//  Created by Naufal Adli on 26/02/24.
//

import SwiftUI

struct DynamicStack<Content: View>: View {
    @Binding var isVertical: Bool
    var content :() -> Content
    var body: some View {
        
        Group{
            if isVertical{
                VStack(spacing: 0, content: {
                    content()
                })
            } else{
                HStack(spacing: 0, content: {
                    content()
                })
            }
        }
        
    }
}

