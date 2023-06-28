//
//  myClubs.swift
//  KWK 2023 FInal Project
//
//  Created by Laika Patel on 6/28/23.
//

import SwiftUI

struct myClubs: View {
    var body: some View {
        NavigationView {
                //Page Heading
                VStack(alignment: .leading) {
                    Text("My Clubs")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                //Add your page content here!!!
                            }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.horizontal)
                .padding(.vertical)
                .scrollIndicators(.hidden)
            
            //Navigation bar
            .navigationBarItems(
                leading:
                    NavigationLink(destination: myClubs()) {
                        Text("ClubHub")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                    },
                trailing:
                    HStack {
                        NavigationLink(destination: schedule()) {
                            Image(systemName: "calendar")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                        
                        NavigationLink(destination: directory()) {
                            Image(systemName: "menucard.fill")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                        }
                    
                    })
        }
        .navigationBarBackButtonHidden(true)

    }
}

struct myClubs_Previews: PreviewProvider {
    static var previews: some View {
        myClubs()
    }
}