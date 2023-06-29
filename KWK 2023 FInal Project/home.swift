//
//  home.swift
//  KWK 2023 FInal Project
//
//  Created by Laika Patel on 6/28/23.
//

import SwiftUI

struct home: View {
    var body: some View {
        VStack {
            NavigationStack {
                NavigationLink(destination: createClub()) {
                    Text("Create Club")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.top)
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .padding([.top, .leading])
                            .frame(width: 125.0, height: 60.0)
                            .foregroundColor(Color.black)
                        NavigationLink(destination: joinClub()) {
                            Text("Join Club")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding([.top, .leading])
                        }
                    }
                    
                }
                .padding([.top, .leading])
            }
        }
    }
    
    struct home_Previews: PreviewProvider {
        static var previews: some View {
            home()
        }
    }
}
