//
//  Diamond.swift
//  Set
//
//  Created by Sebastian Pfeufer on 21.04.22.
//

import SwiftUI

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let xAltitude = rect.width / 2
        let yAltitude = rect.width / 4
        
        let top = CGPoint(x: center.x, y: center.y + yAltitude)
        let left = CGPoint(x: center.x - xAltitude, y: center.y)
        let right = CGPoint(x: center.x + xAltitude, y: center.y)
        let bottom = CGPoint(x: center.x, y: center.y - yAltitude)
        
        var p = Path()
        
        p.move(to: top)
        p.addLine(to: left)
        p.addLine(to: bottom)
        p.addLine(to: right)
        p.addLine(to: top)
        
        return p
    }
}
