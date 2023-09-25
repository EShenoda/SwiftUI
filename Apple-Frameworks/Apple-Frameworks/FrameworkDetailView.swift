//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by emil shenoda on 9/25/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var frameworkObject: Framework

    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            FrameworkTitleView(frameworkDataToDisplay: frameworkObject)
            
            Text(frameworkObject.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                // frame needs to go before background color
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(Color.init(UIColor(displayP3Red: 179, green: 0, blue: 196, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(25)
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FrameworkDetailView(frameworkObject: MockData.sampleFrameworkToDisplay)
    }
}
