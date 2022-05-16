//
//  LoginView.swift
//  Rapptr
//
//  Created by Michael Murphy on 5/7/22.
//

import SwiftUI

struct LoginView: View {
    @State private var emailData = "info@rapptrlabs.com"
    @State private var password = "Password"
 
    var body: some View {
        ZStack {
            Image("img_login")
                .background( ignoresSafeAreaEdges: .all)
                .aspectRatio(contentMode: .fill)
            VStack
            {
                Text("Login")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .frame(width: 400, height: 50)
                    .background(RoundedRectangle(cornerRadius: 10, style: .circular).fill(.blue))
                
                Spacer()
                TextField("", text: $emailData)
                    .padding()
                    .background(.gray)
                
                TextField("Password", text: $password)
                    .padding()
                    .background(.gray)
                
                Button("LOGIN", action: {}).padding()
                    .background(.blue).foregroundColor(.white)
                Spacer()
            }
            .font(.title3)
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
