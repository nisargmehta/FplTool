//
//  FixtureView.swift
//  Fpl
//
//  Created by Nisarg Mehta on 9/6/20.
//  Copyright © 2020 Open Source. All rights reserved.
//

import SwiftUI

struct FixtureView: View {
    let fixturesUrl = "https://fantasy.premierleague.com/api/fixtures/"
    @State private var fixtures = [Fixture]()
    var body: some View {
        NavigationView {
            List {
                ForEach(self.fixtures) { fixture in
                    NavigationLink(destination: FixtureDetailView()) {
                        FixtureRow(fixture: fixture)
                    }
                }
            }
            .navigationBarTitle(Text("Matches"))
        }
        .onAppear(perform: loadData)
    }
    
    func loadData() {
        guard let url = URL(string: fixturesUrl) else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                do {
                    let fdata = try JSONDecoder().decode(Array<Fixture>.self, from: data)
                    DispatchQueue.main.async {
                        self.fixtures = fdata
                    }
                }
                catch let err {
                    print("decoding error: \(err)")
                }
            }
            print("error: \(error?.localizedDescription)")
        }.resume()
    }
}

struct FixtureView_Previews: PreviewProvider {
    static var previews: some View {
        FixtureView()
    }
}
