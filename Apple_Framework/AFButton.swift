//
//  AFButton.swift
//  Apple_Framework
//
//  Created by Chamod Dilushanka on 2024-02-12.
//

import SwiftUI

struct AFButton: View {
    
    var title : String
    
    var body: some View {
        
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280,height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Text Title")
}
