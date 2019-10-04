//
//  Date.swift
//  Pong
//
//  Created by Jared Macias on 10/4/19.
//  Copyright © 2019 Jared Macias. All rights reserved.
//

import Cocoa

extension Date {

    func millisAgo() -> CGFloat {
        return  CGFloat(self.timeIntervalSince1970 * 1000)
    }

    func secondsAgo() -> CGFloat {
        let comps = (Calendar.current as NSCalendar).components(NSCalendar.Unit.second, from: self)
        return CGFloat(comps.second!) / 60.0
    }

    func minutesAgo() -> CGFloat {
        let comps = (Calendar.current as NSCalendar).components(NSCalendar.Unit.minute, from: self)
        return CGFloat(comps.minute!) / 60.0 + self.secondsAgo() / 60.0
    }

    func hoursAgo() -> CGFloat {
        let comps = (Calendar.current as NSCalendar).components(NSCalendar.Unit.hour, from: self)
        return CGFloat(comps.hour!) / 12.0 + (CGFloat((self.minutesAgo() / 60.0) * (60.0 / 12.0)))
    }
}
