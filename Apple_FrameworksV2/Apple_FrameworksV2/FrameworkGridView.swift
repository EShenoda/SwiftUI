//
//  FrameworkGridView.swift
//  Apple_FrameworksV2
//
//  Created by emil shenoda on 9/27/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var gridViewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(MockData.frameworksArray){ frameworkObject in
                    
                    NavigationLink(destination:
                                    FrameworkDetailView(framework: frameworkObject, isShowingDetailView: $gridViewModel.isShowingDetailView)){
                        FrameworkTitleView(frameworkToDisplay: frameworkObject)
                    }
                }
                
            }.environment(\.defaultMinListRowHeight, 80) //minimum row height
                
            
            //.navigationTitle("🍎 Frameworks")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("🍎 Frameworks")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                        .accentColor(Color(.label))
                }
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
