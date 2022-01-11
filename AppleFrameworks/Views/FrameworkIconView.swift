//
//  FrameworkIconView.swift
//  AppleFrameworks
//
//  Created by M100-M1MacMini on 2021/12/30.
//

import SwiftUI

struct FrameworkIconView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.image)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameworkIconView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkIconView(framework: MockData.sample)
    }
}
