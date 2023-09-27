//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by emil shenoda on 9/26/23.
//

import SwiftUI

// This is used in the grid & detail view
struct FrameworkTitleView: View {
    
    let frameworkDataToDisplay: Framework
    
    var body: some View{
        
        VStack{
            Image(frameworkDataToDisplay.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameworkDataToDisplay.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
    
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(frameworkDataToDisplay: MockData.sampleFrameworkToDisplay)
    }
}
