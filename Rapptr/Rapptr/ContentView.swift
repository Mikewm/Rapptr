//
//  ContentView.swift
//  Rapptr
//
//  Created by Michael Murphy on 5/7/22.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            
            ZStack(alignment: .topLeading) {
                Image("bg_home_menu").resizable().aspectRatio(contentMode: .fill)
                
                
                VStack {
                    Text("Coding Tasks")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        
                        .frame(width: 400, height: 50)
                        .background(RoundedRectangle(cornerRadius: 10, style: .circular).fill(.blue))
                    Divider()
                    NavigationLink(destination: ChatView()) {
                        HStack {
                            
                            Image("ic_chat").background(Color.gray.opacity(0.9))
                            Spacer()
                            Text("CHAT").font(.title)
                                .frame(width: 400, height: 50)
                                .background(RoundedRectangle(cornerRadius: 10, style: .circular).fill(.gray))
                            Spacer()
                        }
                    }
                    NavigationLink(destination: LoginView()) {
                        HStack {
                            Image("ic_login").background(Color.gray.opacity(0.9))
                            Spacer()
                            Text("LOGIN").font(.title)
                                .frame(width: 400, height: 50)
                                .background(RoundedRectangle(cornerRadius: 10, style: .circular).fill(.gray))
                            Spacer()
                        }
                    }
                    NavigationLink(destination: AnimationView()) {
                        HStack {
                            Image("ic_animation").background(Color.gray.opacity(0.9))
                            Spacer()
                            Text("ANIMATION").font(.title)
                                .frame(width: 400, height: 50)
                                .background(RoundedRectangle(cornerRadius: 10, style: .circular).fill(.gray))
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
