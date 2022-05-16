//
//  ChatView.swift
//  Rapptr
//
//  Created by Michael Murphy on 5/7/22.
//

import SwiftUI
struct ChatView: View {
    let selections = ["Drew", "Abby", "Taylor", "Abby"]
    let text = ["Team can we give the applicants some examples of our apps", "We work on eCommerce apps like PromGirl and Simply Dresses", "You know one of those scooter sharing apps that have been popping uP?", "We do alot of hardware-pairing apps, as well."]
    private var selection = ""
    
    var body: some View {
        VStack {
            Text("Chat")
                .font(.largeTitle)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .frame(width: 400, height: 50)
                .background(RoundedRectangle(cornerRadius: 10, style: .circular).fill(.blue))
            
            List {
                ForEach(selections, id: \.self) { datum in
                    Person(person: datum)
                }
            }
        }
    }
}

struct Person: View {
    var person: String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle.fill")
                Text(person)
                Spacer()
            }

        }
    }
}
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
