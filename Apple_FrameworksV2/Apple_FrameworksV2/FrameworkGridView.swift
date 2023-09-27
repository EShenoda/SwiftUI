//
//  FrameworkGridView.swift
//  Apple_FrameworksV2
//
//  Created by emil shenoda on 9/27/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columnsArray: [GridItem] = [GridItem(.flexible()),
                                    GridItem(.flexible()),
                                    GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                LazyVGrid(columns: columnsArray){
                    
                    ForEach(MockData.frameworksArray){ frameworkObject in
                        FrameworkTitleView(frameworkToDisplay: frameworkObject)
                        
                            .onTapGesture {
                                print("The name selected is \(frameworkObject.name)")
                            }
                    }
                }
                
                //.navigationTitle("🍎 Frameworks")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("🍎 Frameworks")
                            .font(.largeTitle.bold())
                            .accessibilityAddTraits(.isHeader)
                    }
                }
                .padding()
            }
        }
    }
}

struct FrameworkTitleView: View {
    
    let frameworkToDisplay: Framework
    
    var body: some View {
        
        VStack {
            
            Image(frameworkToDisplay.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameworkToDisplay.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
