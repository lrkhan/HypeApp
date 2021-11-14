//
//  Types.swift
//  Hype
//
//  Created by Luthfor Khan on 11/14/21.
//

import Foundation

struct hubType {
    var name: String = "[Name]"
    var location: String = "[Address]"
    var image: String = "temp"
    var phone: String = "[Phone]"
    var site: String = "[Site]"
    var accessibility: String = "Wheelchair friendly"
    var info: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
}

struct profile {
    var name: String = "[Profile Name]"
    var location: String = "[Locaiton]"
    var profileImg: String = "temp"
}

struct eventType {
    var hub: hubType = hubType()
    var name: String = "[Event Name]"
    var eventInfo: String = "[Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.]"
    
    // hub inforation
    var hubName: String
    var hubImage: String
    var location: String
    var hubPhone: String
    var hubSite: String
    var hubAccessibility: String
    
    // init with input of event's hub
    init(eventHub hub: hubType) {
        self.hubName = hub.name
        self.hubImage = hub.image
        self.location = hub.location
        self.hubPhone = hub.phone
        self.hubSite = hub.site
        self.hubAccessibility = hub.accessibility
    }
}
