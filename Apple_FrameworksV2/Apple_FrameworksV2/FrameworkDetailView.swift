//
//  FrameworkDetailView.swift
//  Apple_FrameworksV2
//
//  Created by emil shenoda on 9/27/23.
//

import SwiftUI

struct FrameworkDetailView: View {

    var frameworkObject: Framework
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                Spacer()
                
                Button {
                    
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            FrameworkTitleView(frameworkToDisplay: frameworkObject)
            
            Text(frameworkObject.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(25)
            }
            
            Spacer()

        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(frameworkObject: MockData.sampleFrameworkToDisplay)
            .preferredColorScheme(.dark)
    }
}
