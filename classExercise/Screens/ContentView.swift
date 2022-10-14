//
//  ContentView.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    var city: City = CityData[0]
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: colorScheme == .dark ? [.black ,.black, .gray] : [Color.accentColor, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            VStack(alignment: .center){
                
                Text("\(city.name), \(city.code)")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .medium, design: .default))
                
                VStack{
                    Image(systemName: "\(city.icon)")
                        .symbolRenderingMode(.multicolor)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 160, height: 160, alignment: .center) // an example from implementing an image from SF Symbols
                    
                    Text("\(city.weather[0].temperature)º")
                        .font(.system(size: 80, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.vertical, 20)
                    
                    HStack(spacing: 15){
                        
                        // Example of for loop 
                        ForEach(city.weather, id: \.self.id) {temp in
                            WeatherForecastView(dayOfWeek: temp.dayOfWeek, imageName: temp.imageName, temperature: temp.temperature)
                        }
                    }
                    
                    Spacer()
                    
                    TabView{
                        ForecastCardView(text: "Wind Speed", icon: "wind", value: "22 km/h")
                        ForecastCardView(text: "Humidity", icon: "thermometer", value: "23%")
                    }
                    .frame(height: 150)
                    .padding()
                    .tabViewStyle(.page)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "arrow.clockwise.circle")
                            .foregroundColor(.white)
                        
                        Text("Change Location")
                            .foregroundColor(.white)
                    }.padding()
                        .buttonStyle(.bordered)
                        .border(.white, width: 1)
                        .buttonBorderShape(.capsule)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
