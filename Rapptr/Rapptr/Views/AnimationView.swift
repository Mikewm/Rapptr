//
//  AnimationView.swift
//  Rapptr
//
//  Created by Michael Murphy on 5/7/22.
//

import SwiftUI

struct AnimationView: View {
    
    @State private var op = false
    private var toggle = false
    var body: some View {
        VStack {
            Text("Animation")
                .font(.largeTitle)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .frame(width: 400, height: 50)
                .background(RoundedRectangle(cornerRadius: 10, style: .circular).fill(.blue))
        
        Spacer()
        Image("ic_logo")
            .opacity(op ? 0.2 : 1)
        Spacer()
        Spacer()
        Button(action: {self.op.toggle() } ) {
            Text("FADE IN")
                .padding(12)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .frame(width: 300, height: 50)
                .background(RoundedRectangle(cornerRadius: 10, style: .circular).fill(.blue))
        }
            
        }
        Spacer()
        
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
