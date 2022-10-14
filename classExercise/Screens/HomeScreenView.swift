//
//  HomeScreenView.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

import SwiftUI

struct HomeScreenView: View {
    
    // MARK: - Properties
    var cities: [City] = CityData
    
    @State var showSheet: Bool = false
    
    var body: some View {
        // Creating a list
        NavigationView{
            List(cities) {city in
                // Example of navigationLink
                NavigationLink(destination: ContentView()){
                    CityItemView(city: city)
                }
                    .padding()
                    .listStyle(PlainListStyle())
                
                //NavigationView Modifiers
                    .navigationTitle("Cities")
                    .navigationBarItems(trailing:
                                            Button(action: {print("Settings")
                        showSheet.toggle()
                    }){
                        //Sheet Navigation

                        Image(systemName: "gear")
                            .renderingMode(.original)
                        
                    }.sheet(isPresented: $showSheet){
                        SettingsViewScreen()
                    }
                    )
            }
        }

    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
