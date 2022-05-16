//
//  InformationDetail.swift
//  InfoScreen
//
//  Created by Michael Murphy on 12/28/20.
//

import SwiftUI

struct InformationDetailView: View {
 
  
    var title: String = "title"
    var imageName: String = "car"
    var color: Color = .blue
   
    var body: some View {
        
        HStack {
            Image(systemName: imageName)
                .font(.largeTitle)
                .foregroundColor(color)
                .shadow(color: .primary, radius: 1, x: 1, y: 1)
                .padding()
                .accessibility(hidden: true)
            Text(title)
                .font(.headline)
                .foregroundColor(.gray)
                .frame(width: 400.0)
                .shadow(color: .primary, radius: 1, x: 1, y: 1)
                .padding(.trailing)
           
        }
    }
}

struct InformationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InformationDetailView()
            .environment(\.sizeCategory, .extraLarge)
    }
}

