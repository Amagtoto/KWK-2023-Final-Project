//
//  createClub.swift
//  KWK 2023 FInal Project
//
//  Created by Laika Patel on 6/28/23.
//

import SwiftUI

struct createClub: View {
    var body: some View {
        NavigationView {
                //Page Heading
                VStack(alignment: .leading) {
                    Text("Create Club")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top)
                //Add your page content here!!!
                    TextField("Class name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                        .multilineTextAlignment(.leading)
                            .font(.title)
                            .border(Color.gray, width: 2)
                    TextField("Room", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                        .multilineTextAlignment(.leading)
                        .font(.title)
                        .border(Color.gray, width: 2)
                    TextField("Advisor", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                        .multilineTextAlignment(.leading)
                        .font(.title)
                        .border(Color.gray, width: 2)
                    TextField("Category", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                        .multilineTextAlignment(.leading)
                        .font(.title)
                        .border(Color.gray, width: 2)

                    }

                            }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.horizontal)
                .padding(.vertical)
                .scrollIndicators(.hidden)
            

            }
            
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

struct createClub_Previews: PreviewProvider {
    static var previews: some View {
        createClub()
    }
}




       
