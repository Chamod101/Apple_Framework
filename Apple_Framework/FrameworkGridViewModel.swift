//
//  FrameworkGridViewModel.swift
//  Apple_Framework
//
//  Created by Chamod Dilushanka on 2024-02-12.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework : Framework?{
        didSet{
            isShowingDetailsView = true
        }
    }
    @Published var isShowingDetailsView = false
    
}
