//
//  NumbersScreenView.swift
//  ContactListSwiftUI
//
//  Created by Lepestok Jora on 25.01.2023.
//

import SwiftUI

struct NumbersScreenView: View {
    
    var shownContats: DataStore
    var body: some View {
        
       shownContats.nameArey
    }
}

struct NumbersScreenView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersScreenView(shownContats: DataStore())
    }
}
