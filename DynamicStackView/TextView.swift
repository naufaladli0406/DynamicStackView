//
//  TextView.swift
//  DynamicStackView
//
//  Created by Naufal Adli on 26/02/24.
//

import SwiftUI

struct TextView: View {
    var color : Color
    var body: some View {
        ZStack{
            color
        }
        .ignoresSafeArea()
    }
}
