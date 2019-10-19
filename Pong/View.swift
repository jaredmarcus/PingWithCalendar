//
//  View.swift
//  Pong
//
//  Created by Robert Popeleski on 10/4/19.
//  Copyright © 2019 Jared Macias. All rights reserved.
//

import AppKit

final class View: NSView {
    let settings = Settings()
    
    //Label for text: "hours" and "minutes"
    let detailLabel: Label = {
        let minutes = Label()
        minutes.translatesAutoresizingMaskIntoConstraints = false
        minutes.textColor = .black
        minutes.alignment = .justified
        minutes.font = NSFont.init(name: "SquareFont", size: 28.0)
        return minutes
    }()
    
    //Label for numbers: "hours" and "minutes"
    let textLabel: Label = {
        let hour = Label()
        hour.translatesAutoresizingMaskIntoConstraints = false
        hour.textColor = .white
        hour.alignment = .justified
        hour.font = NSFont.init(name: "SquareFont", size: 12.0)
        return hour
    }()
    
    func updateTime() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = settings.dateFormat()
        let dateString = formatter.string(from: date)
        return dateString
    }
    
    func updateSec() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = settings.secFormat()
        let dateString = formatter.string(from: date)
        return dateString
    }

    // Initializers
    init(xpos:CGFloat, ypos:CGFloat, bwidth:CGFloat, bheight:CGFloat) {
        super.init(frame: NSRect(x: xpos,
        y: ypos,
        width: bwidth,
        height: bheight))

        //addSubview(textLabel)
        addSubview(detailLabel)

        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.topAnchor.constraint(equalTo: topAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.bottomAnchor.constraint(equalTo: detailLabel.topAnchor),
            detailLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            detailLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            detailLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            detailLabel.topAnchor.constraint(equalTo: topAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}
