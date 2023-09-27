//
//  DismissButton.swift
//  Apple-Frameworks
//
//  Created by emil shenoda on 9/26/23.
//

import SwiftUI

struct DismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        HStack(){
            
            Spacer()
            
            Button{
                
                // Tapping the "X" closes the detail view & changes it to false
                isShowingDetailView = false
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
       
    }
}

struct DismissButton_Previews: PreviewProvider {
    static var previews: some View {
        DismissButton(isShowingDetailView: .constant(false))
    }
}
