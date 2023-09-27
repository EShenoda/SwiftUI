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
    // Unique to one screen...private
    @State private var isShowingSafariView = false

    
    var body: some View {
        
        VStack {
            
            DismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(frameworkDataToDisplay: frameworkObject)
            
            Text(frameworkObject.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                // On button tapped...
                isShowingSafariView = true
                
            } label: {
                
                FrameworksButton(title: "Learn More")
            }
            
            Spacer()
        }
        // Change .sheet to .fullScreenCover
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: frameworkObject.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FrameworkDetailView(frameworkObject: MockData.sampleFrameworkToDisplay,
                            isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
