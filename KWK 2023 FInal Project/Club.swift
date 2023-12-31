//
//  Club.swift
//  KWK ClubHub
//
//  Created by Angela Magtoto on 6/27/23.
//


//THIS IS A LIST TO POPULATE THE DIRECTORY and MYCLUBS

import SwiftUI

struct Club: Identifiable {
    let id = UUID()
    let imageName: String
    let clubName: String
    let roomNumber: String
    let advisor: String
    let category: String
    let contact: String
    let about: String
}

struct ClubList: Identifiable{
    let id = UUID()
    @State private var clubs: [Club] = []
    static var clubs2: [Club] = []
    
    
    func getClubs() -> [Club] {
        return clubs
    }
    
    func addClub(imageName: String, clubName: String, roomNumber: String, advisor: String, category: String, contact: String, about: String) {
        let newClub = Club(imageName:"uwu", clubName: clubName, roomNumber: roomNumber, advisor: advisor, category: category, contact: contact, about: about)
        self.clubs.append(newClub)
    }
}


//List of directory clubs to make it look realistic LOL
struct clubList {

    static var clubs = [
        Club(imageName: "placeholder",
              clubName: "Robotics",
              roomNumber: "Room 407",
              advisor: "Mr. Good",
              category: "STEM",
              contact: "good@gmail.com",
              about: "Build robots!"),

        Club(imageName: "placeholder",
              clubName: "Key Club",
              roomNumber: "Room 305",
              advisor: "Mrs. Ekstien",
              category: "Community",
              contact: "ekstien@gmail.com",
              about: "Help out the community!"),

        Club(imageName: "placeholder",
              clubName: "DECA",
              roomNumber: "Room 508",
              advisor: "Mr. Lafi",
              category: "Business",
              contact: "good@gmail.com",
              about: "Learn about entrepreneurship!"),

    ]
}

