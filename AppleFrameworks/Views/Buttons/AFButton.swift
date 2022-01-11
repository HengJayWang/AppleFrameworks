//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by M100-M1MacMini on 2021/12/29.
//

import SwiftUI

struct AFButton: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(12)
            .padding(12)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "AFButton Title")
    }
}
