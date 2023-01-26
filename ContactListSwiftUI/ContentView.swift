//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Lepestok Jora on 25.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    //private var shownContats: [DataStore]
    //private var list: []
    
    var body: some View {
        
        
        TabView {
            ContactScreenView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contact")
                }
            NumbersScreenView()
                .tabItem {
                    Image(systemName: "phone.arrow.up.right")
                    Text("Number")
                }
        }
    }
    
    List(shownContats) { shownContats in
        NavigationLink(destination: NumbersScreenView(flight: flight)) {
            ContactDetail(flight: flight)
        }
    }
    .navigationTitle(boardName)
    .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(shownContats: DataStore())
    }
}
