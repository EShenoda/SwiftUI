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
            
            HStack{
                
                Spacer()
                
                Button{
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
          
                }
            }
            .padding()
           
            
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
            .preferredColorScheme(.dark)
    }
}
