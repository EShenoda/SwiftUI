//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by emil shenoda on 9/24/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // Flexible allows you to fill the screen based on the number of columns
    let columnsArray: [GridItem] = [GridItem(.flexible()),
                                    GridItem(.flexible()),
                                    GridItem(.flexible())  ]
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                LazyVGrid(columns: columnsArray) {
                    
                    ForEach(MockData.frameworksArray) { frameworkData in
                        
                        FrameworkTitleView(frameworkDataToDisplay: frameworkData)
                    }
                }
                .navigationTitle("🍎 Frameworks")
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
