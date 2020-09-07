//
//  ContentView.swift
//  Fpl
//
//  Created by Nisarg Mehta on 9/6/20.
//  Copyright © 2020 Open Source. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var selectedView = 0
    var body: some View {
        TabView(selection: $selectedView) {
            FixtureView()
                .tabItem {
                    Text("Fixtures")
                }.tag(0)
            Text("Second View")
                .tabItem {
                    Text("Players")
                }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
