//
//  CityItemView.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

import SwiftUI

struct CityItemView: View {
    // if var is not equal to anything, it behaves as a property
    var city: City
    
    var body: some View {
        HStack{
            Image(systemName: city.icon)
                .renderingMode(.original)
            VStack(alignment: .leading){
                Text(city.name)
                    .font(.title)
                Text(city.code)
            }.padding()
        }.padding()
    }
    
    struct CityItemView_Previews: PreviewProvider {
        static var previews: some View {
            CityItemView(city: CityData[0])
                .background()
        }
    }
}
