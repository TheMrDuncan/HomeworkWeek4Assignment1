//
//  DetailsView.swift
//  HomeworkWeek4Assignment1
//
//  Created by Carl Duncan on 9/11/22.
//

import SwiftUI

struct DetailsView: View {
    @State var image = ""
    @State var name = ""
    @State var description = ""
    
    var passedInImage: String
    var passedInName: String
    var passedInDescription: String
    
    var body: some View {

            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 150, height: 150)

                Text(name)
                    .font(.caption)
                Text(description)

            }
//            .frame(minWidth: (200),  minHeight: (200))
            .onAppear {
                image = passedInImage
                name = passedInName
                description = passedInDescription
            }
    }
        
}



struct DetailsView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailsView(passedInImage: "WCB", passedInName: "WEST COAST BURGER", passedInDescription: "Guacamole, Monterey jack cheese on a buttered, toasted whole-wheat bun with mayo, lettuce, tomato & onion.")
    }
}
