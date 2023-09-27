//
//  FrameworkGridViewModel.swift
//  Apple_FrameworksV2
//
//  Created by emil shenoda on 9/27/23.
//

import SwiftUI


final class FrameworkGridViewModel: ObservableObject{
    
    @Published var isShowingDetailView = false
    
    var selectedFramework: Framework?{
        
        didSet{
            isShowingDetailView = true
        }
    }
    
    
    
    
    
}
