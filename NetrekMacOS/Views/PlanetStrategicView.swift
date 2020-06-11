//
//  PlanetView.swift
//  Netrek2
//
//  Created by Darrell Root on 5/6/20.
//  Copyright © 2020 Darrell Root. All rights reserved.
//

import SwiftUI

struct PlanetStrategicView: View, StrategicOffset {
    @ObservedObject var planet: Planet
    var body: some View {
        return GeometryReader { geo in
            ZStack {
                Text(self.planet.shortName).foregroundColor(NetrekMath.color(team: self.planet.owner)).fontWeight(self.planet.armies > 4 ? .heavy : .regular)
            }
            .offset(x: self.screenX(netrekPositionX: self.planet.positionX, screenWidth: geo.size.width), y: self.screenY(netrekPositionY: self.planet.positionY, screenHeight: geo.size.height))
        }
        
    }
}

/*struct PlanetView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetView()
    }
}*/