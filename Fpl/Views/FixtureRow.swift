//
//  FixtureRow.swift
//  Fpl
//
//  Created by Nisarg Mehta on 9/6/20.
//  Copyright © 2020 Open Source. All rights reserved.
//

import SwiftUI

struct FixtureRow: View {
    var fixture: Fixture
    let teams = ["Arsenal","Villa","Brighton","Burnley","Chelsea","Palace","Everton","Fulham","Leeds","Leicester","Liverpool","Man City","Man Utd","Newcastle","Sheffield","Southampton","Spurs","West Brom","West Ham","Wolves"]
    var body: some View {
        HStack {
            Spacer()
            Text(teams[fixture.team_h-1])
            Text(" vs ")
            Text(teams[fixture.team_a-1])
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
//        Group {
//            Something(data: data[0])
//        }
        FixtureRow(fixture: Fixture(id: 1, event: 22, team_a: 3, team_h: 4, started: false, finished: false))
        .previewLayout(.fixed(width: 300, height: 90))
    }
}

