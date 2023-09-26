//
//  FrameworksGridViewModel.swift
//  Apple-Frameworks
//
//  Created by emil shenoda on 9/26/23.
//

import SwiftUI

// Conform to the ObservableObject so that it can broadcast its changes
// When the properties change, observable will listen to these
// changes and update the UI
final class FrameworksGridViewModel: ObservableObject {
    
    // Allow the gridview to listen to when the detail view is showing
    @Published var isShowingDetailView = false
    
    
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    

    
}
