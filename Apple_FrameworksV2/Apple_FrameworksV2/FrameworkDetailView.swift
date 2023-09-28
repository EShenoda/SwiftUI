//
//  FrameworkDetailView.swift
//  Apple_FrameworksV2
//
//  Created by emil shenoda on 9/27/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var frameworkObject: Framework
    @Binding var isShowingDetailView: Bool
    // change to true when the "Learn more" button is tapped
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                Spacer()
                
                Button {
                    isShowingDetailView = false
                    
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
                
                isShowingSafariView = true
                
            } label: {
                FrameworkButton()
            }
            
            Spacer()
            
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(urlPassedIn: URL(string: frameworkObject.urlString)
            ?? URL(string: "www.apple.com")!)
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
