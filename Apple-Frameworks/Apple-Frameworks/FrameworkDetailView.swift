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
                
                FrameworksButton(title: "Learn More")
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FrameworkDetailView(frameworkObject: MockData.sampleFrameworkToDisplay)
    }
}
