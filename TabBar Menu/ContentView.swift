//
//  ContentView.swift
//  TabBar Menu
//
//  Created by Jorge Giannotta on 07/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBarView()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
