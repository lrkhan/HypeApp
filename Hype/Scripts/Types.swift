//
//  Types.swift
//  Hype
//
//  Created by Luthfor Khan on 11/14/21.
//

import Foundation

struct hubType: Hashable {
    var name: String = "[Name]"
    var location: String = "[Address]"
    var image: String = "temp"
    var phone: String = "[Phone]"
    var site: String = "[Site]"
    var accessibility: String = "[Accessibility]"
    var info: String = "[Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.]"
}

struct profile {
    var name: String = "[Profile Name]"
    var location: String = "[Locaiton]"
    var profileImg: String = "temp"
}

struct eventType: Hashable {
    var name: String
    var info: String
    var date: String
    var time: String
    var saves: Int
    var bigImg: String
    var hubData: hubType
    var isSaved: Bool = false
    
    // hub inforation
    var hubName: String
    var hubImage: String
    var location: String
    var hubPhone: String
    var hubSite: String
    var hubAccessibility: String
    
    // init with input of event's hub
    init(eventHub hub: hubType, Name: String = "[Event Name]", Info: String = "[Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.]", Date: String = "[Date]", Time: String = "[Time]", Saves: Int = 0, Image: String  = "temp") {
        self.hubData = hub
        self.hubName = hub.name
        self.hubImage = hub.image
        self.location = hub.location
        self.hubPhone = hub.phone
        self.hubSite = hub.site
        self.hubAccessibility = hub.accessibility
        
        self.name = Name
        self.info = Info
        self.date = Date
        self.time = Time
        self.saves = Saves
        self.bigImg = Image
    }
    
    mutating func toggleSave() -> Void {
        if isSaved {
           isSaved = false
        } else {
            isSaved = true
        }
    }
    
}
