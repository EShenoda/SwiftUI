//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by emil shenoda on 10/2/23.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> ScannerViewController {
        ScannerViewController(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        
        Coordinator()
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraErrorMessage) {
            print(error.rawValue)
        }
    }
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView()
    }
}
