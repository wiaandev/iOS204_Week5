//
//  SettingsViewScreen.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

import SwiftUI

struct SettingsViewScreen: View {
    
    @State var showAbout: Bool = false
    
    //Get the iPhone's dark mode settings
//    @Environment(\.colorScheme) var colorScheme
    
    @AppStorage("isDarkMode") var isDarkMode = false
    
    var body: some View {
        VStack(spacing: 10){
            //OPTIONAL: Add a dismiss button
            Text("About")
                .font(.system(size: 36, weight: .black))
                .padding(.vertical, 10)
            Divider()
            GroupBox{
                
                DisclosureGroup("About CloudCast", isExpanded: $showAbout){
                    Text("""
                        This is the best app in the world! And was created by your favourite lecturer!
                    """)
                    .multilineTextAlignment(.center)
                }
                
            }

            
            GroupBox{
                HStack{
                    
                    Text("Source Code")
                    Spacer()
                    Link("Github", destination: URL(string: "https://github.com")!)
                    Image(systemName: "arrow.up.right.square")
                    
                }
            }

            Text("Settings")
                .font(.system(size: 36, weight: .black))
                .padding(.vertical, 10)
            Divider()
            
            Picker("Mode", selection: $isDarkMode) {
                Text("Day").tag(false)
                Text("Night").tag(true)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
        }
        .padding()
//        .onAppear(perform: {
//            colorScheme == .dark ? isDarkMode = true
//        })

    }
}

struct SettingsViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsViewScreen()
    }
}
