//
//  ContentView.swift
//  SwiftUI Sample
//
//  Created by Yaakoub Hasan on 28/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                Image("ic_markit_logo")
                    .frame(width: .none, height: .none, alignment: .center)
                    .padding(.top, 100)
                Text("Hello,\nWelcome to Markit")
                    .bold()
                    .font(.title)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                VStack {
                    TextField("Username", text: $username)
                        .padding(EdgeInsets(top: 16, leading: 30, bottom: 0, trailing: 30))
                    Rectangle()
                        .frame(height: 1.0, alignment: .bottom)
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(top: 0, leading: 30, bottom: 16, trailing: 30))
                    TextField("Password", text: $password)
                        .padding(EdgeInsets(top: 16, leading: 30, bottom: 0, trailing: 30))
                    Rectangle()
                        .frame(height: 1.0, alignment: .bottom)
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(top: 0, leading: 30, bottom: 16, trailing: 30))
                }.padding(.top, 100)
            }
            VStack(alignment: .center) {
                Button(action: {
                    print("Log In Button pressed!")
                }, label: { Text("Log in")
                    .foregroundColor(.white)
                    .frame(minWidth: 0,maxWidth: .infinity, alignment: .center)
                    .padding()
                }).background(Color.green)
                .cornerRadius(8)
            }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 16, trailing: 30))
        }
    }
}
//"2ECC71"
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
