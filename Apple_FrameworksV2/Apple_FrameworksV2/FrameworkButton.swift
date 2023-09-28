//
//  FrameworkButton.swift
//  Apple_FrameworksV2
//
//  Created by emil shenoda on 9/27/23.
//

import SwiftUI

struct FrameworkButton: View {
    
    var body: some View {
        Text("Learn More")
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(25)
    }
}

struct FrameworkButton_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkButton()
    }
}
