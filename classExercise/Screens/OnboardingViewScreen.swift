//
//  OnboardingViewScreen.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

import SwiftUI

struct OnboardingViewScreen: View {
    
    //reference to AppStorage onboarding
    @AppStorage("onboardingComplete") var onboardingComplete = false
    
    var onboarding: [Onboard] = OnboardingData
    
    var body: some View {
        VStack{
            
            TabView{
                ForEach(onboarding) { onboard in
                    OnboardCardView(onboard: onboard)
                }
            }
            .tabViewStyle(.page)
            Spacer()
            Button(action: {
                //Set onboarding complete
                onboardingComplete = true
            }) {
                Text("Get Started")
            }
        }
    }
}

struct OnboardingViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewScreen()
    }
}
