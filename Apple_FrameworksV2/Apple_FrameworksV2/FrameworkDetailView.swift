//
//  FrameworkDetailView.swift
//  Apple_FrameworksV2
//
//  Created by emil shenoda on 9/27/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    // change to true when the "Learn more" button is tapped
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            FrameworkTitleView(frameworkToDisplay: framework)
            
            Spacer()
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
                isShowingSafariView = true
                
            } label: {
                FrameworkButton()
            }
            
            Spacer()
            
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(urlPassedIn: URL(string: framework.urlString)
            ?? URL(string: "www.apple.com")!)
        })
        
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFrameworkToDisplay,
                            isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
