//
//  Fixture.swift
//  Fpl
//
//  Created by Nisarg Mehta on 9/6/20.
//  Copyright © 2020 Open Source. All rights reserved.
//

import Foundation

struct Fixture: Hashable, Codable, Identifiable {
    var id: Int
    var event: Int?
    var kickoff_time: Date?
    var team_a: Int
    var team_h: Int
    var started: Bool?
    var finished: Bool
}
