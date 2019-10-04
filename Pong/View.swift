//
//  View.swift
//  Pong
//
//  Created by Robert Popeleski on 10/4/19.
//  Copyright © 2019 Jared Macias. All rights reserved.
//

import AppKit

final class View: NSView {

    // Label for numbers: hours and minutes
    let textLabel: Label = {
        let label = Label()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.alignment = .center
        return label
    }()
    
    // Label for text: "hours" and "minutes"
    let detailLabel: Label = {
        let label = Label()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray             // or use NSColor(white: 1, alpha: 0.5)
        label.alignment = .center
        return label
    }()

    // Initializers
    init() {
        super.init(frame: .zero)

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
