//
//  Label.swift
//  Pong
//
//  Created by Robert Popeleski on 10/4/19.
//  Copyright © 2019 Jared Macias. All rights reserved.
//

import AppKit

final class Label: NSTextField {
    
    override init(frame: NSRect) {
        super.init(frame: frame)
        drawsBackground = false
        isBezeled = false
        isSelectable = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}
