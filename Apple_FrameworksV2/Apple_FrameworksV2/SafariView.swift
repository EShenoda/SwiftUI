//
//  SafariView.swift
//  Apple_FrameworksV2
//
//  Created by emil shenoda on 9/27/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{
    
    let urlPassedIn: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: urlPassedIn)
    }
    
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context:
                                UIViewControllerRepresentableContext<SafariView>) {}
    
    
    
}
