//
//  Settings.swift
//  Pong
//
//  Created by Robert Popeleski on 10/17/19.
//  Copyright © 2019 Jared Macias. All rights reserved.
//

import ScreenSaver

class Settings {
    let defaults = Settings.screenSaverDefaults()
    func dateFormat() -> String {
        if defaults.bool(forKey: "isTwelveHour") {
            return "h : mm"
        } else {
            return "HH : mm"
        }
    }
    
    func secFormat() -> String{
        return "ss"
    }
    private static func screenSaverDefaults() -> ScreenSaverDefaults {
        guard let bundleId = Bundle(for: Settings.self).bundleIdentifier else {
            fatalError("Could not find a bundle identifier")
        }

        guard let defaults = ScreenSaverDefaults(forModuleWithName: bundleId) else {
            fatalError("Could not create ScreenSaverDefaults instance")
        }

        return defaults
    }
}
