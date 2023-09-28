//
//  FrameworkTitleView.swift
//  Apple_FrameworksV2
//
//  Created by emil shenoda on 9/27/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let frameworkToDisplay: Framework
    
    var body: some View {
        
        HStack {
            
            Image(frameworkToDisplay.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(frameworkToDisplay.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }        
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(frameworkToDisplay: MockData.sampleFrameworkToDisplay)
    }
}
