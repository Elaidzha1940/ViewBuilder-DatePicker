//  /*
//
//  Project: DatePicker
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 23.04.2023
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 12) {
            
            UserView(title: "swiftUI", iconName: "")
            UserView(title: "swiftUI1", iconName: "")
            UserView(title: "swiftUI2", iconName: "")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct UserView: View {
    
    let title: String
    let iconName: String
    
    var body: some View {
        
        Button {
            print()
        } label: {
            Text("iOS")
                .padding(.horizontal, 8)
            Spacer()
            Image("chevron.right")
                .padding(.trailing)
        }
        .frame(width: 400, height: 50)
        .background(Color.blue)
        .foregroundColor(Color.white)
        .opacity(0.6)
        .cornerRadius(14)
    }
}

