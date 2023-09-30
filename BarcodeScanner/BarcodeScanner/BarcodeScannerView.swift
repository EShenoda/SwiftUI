//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by emil shenoda on 9/30/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    var body: some View {
        
        let lightPurple: Color = Color.init(UIColor(displayP3Red: 179, green: 0, blue: 196, alpha: 1))
        
        NavigationView {
            
            VStack {
                
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                
            }
            //.navigationTitle("Barcode Scanner")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Barcode Scanner")
                        .font(.title.bold())
                        .accessibilityAddTraits(.isHeader)
                        .foregroundColor(lightPurple)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
            .preferredColorScheme(.dark)
    }
}
