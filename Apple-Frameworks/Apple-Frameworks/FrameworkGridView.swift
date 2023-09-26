//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by emil shenoda on 9/24/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // Persist & maintain the data
    @StateObject var viewModel = FrameworksGridViewModel()
    
    // flexible() allows you to fill the screen based on the number of columns
    let columnsArray: [GridItem] = [GridItem(.flexible()),
                                    GridItem(.flexible()),
                                    GridItem(.flexible())  ]
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                LazyVGrid(columns: columnsArray) {
                    
                    // Build each individual framework title view
                    ForEach(MockData.frameworksArray) { frameworkData in
                        
                        FrameworkTitleView(frameworkDataToDisplay: frameworkData)
                        
                            .onTapGesture {
                                
                                viewModel.selectedFramework = frameworkData
                            }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                
                // isPresented needs a boolean value
                // bind this to the viewModel
                // the sheet is listening for changes to the  GridViewModel
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    
                    // Present the detail view or a default if nil
                    FrameworkDetailView(frameworkObject: viewModel.selectedFramework
                                        
                                        ?? MockData.sampleFrameworkToDisplay,
                                        isShowingDetailView: $viewModel.isShowingDetailView )
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
