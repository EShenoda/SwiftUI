//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by emil shenoda on 9/25/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var frameworkObject: Framework
    
    // Need this button to dismiss the DetailView
    // binding to the parent view (FrameworkGridView)
    @Binding var isShowingDetailView: Bool

    
    var body: some View {
        
        VStack {
            
            HStack(){
                
                Spacer()
                
                Button{
                    
                    isShowingDetailView = false
                    
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
            
            Spacer()
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FrameworkDetailView(frameworkObject: MockData.sampleFrameworkToDisplay,
                            isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
