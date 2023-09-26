//
//  FrameworksButton.swift
//  Apple-Frameworks
//
//  Created by emil shenoda on 9/26/23.
//

import SwiftUI

struct FrameworksButton: View {
    
    var title: String
    
    var body: some View {
        
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
        // frame needs to go before background color
            .frame(width: 280, height: 50, alignment: .center)
            .background(Color.init(UIColor(displayP3Red: 179, green: 0, blue: 196, alpha: 1)))
            .foregroundColor(.white)
            .cornerRadius(25)
    }
}

struct FrameworksButton_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksButton(title: "Test Title")
    }
}
