//
//  View.swift
//  Pong
//
//  Created by Robert Popeleski on 10/4/19.
//  Copyright © 2019 Jared Macias. All rights reserved.
//

import AppKit

final class View: NSView {

    //Label for numbers: "hours" and "minutes"
    let textLabel: Label = {
        let hour = Label()
        hour.translatesAutoresizingMaskIntoConstraints = false
        hour.textColor = .white
        hour.alignment = .center
        return hour
    }()
    
    //Label for text: "hours" and "minutes"
    let detailLabel: Label = {
        let minutes = Label()
        minutes.translatesAutoresizingMaskIntoConstraints = false
        minutes.textColor = .gray             // or use NSColor(white: 1, alpha: 0.5)
        minutes.alignment = .center
        return minutes
    }()

    // Initializers
    init(xpos:CGFloat, ypos:CGFloat) {
        super.init(frame: NSRect(x: xpos,
        y: ypos,
        width: 100,
        height: 100))

        addSubview(textLabel)
        addSubview(detailLabel)

        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.topAnchor.constraint(equalTo: topAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.bottomAnchor.constraint(equalTo: detailLabel.topAnchor),
            detailLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            detailLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            detailLabel.trailingAnchor.constraint(equalTo: trailingAnchor) ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}
