//
//  classExerciseApp.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

import SwiftUI
//this is the entry point of the application
@main
struct classExerciseApp: App {
    
    //get the app storage onboarding value
    @AppStorage("onboardingComplete") var onboardingComplete = false
    
    @AppStorage("isDarkMode") var isDarkMode = false
    
    
    var body: some Scene {
        WindowGroup {
//           OnboardCardView()
            
            if(onboardingComplete) {
                HomeScreenView()
                    .preferredColorScheme(isDarkMode ? .dark : .light) // uses the app's preferences
            } else {
                OnboardingViewScreen()
            }
        }
    }
}
