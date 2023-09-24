//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by emil shenoda on 9/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNightMode = false
    
    var body: some View {
        
        ZStack {
            
            BackgroundGradient(colorTop: isNightMode ? Color.black : Color.blue, colorBottom: isNightMode ? "gray": "lightBlue")
            
            VStack{
                
              CityTextView(cityName: "Port Orange, FL")
                
                MainWeatherStatusView(imageName:
                                        isNightMode ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                
                HStack (spacing: 20) {
                    
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", degrees: 70)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.drizzle.fill", degrees: 80)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind", degrees: 66)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", degrees: 80)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "moon.stars.fill", degrees: 50)
                }
                
                Spacer()
                
                Button {
                    isNightMode.toggle()
                } label: {
                    WeatherButton(title:
                                    isNightMode ?  "Change Day Time" : "Change Night Time", textColor: Color.blue, backgroundColor: Color.white)
                }
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var degrees: Int
    
    var body: some View {
        VStack {
            
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(degrees)°")
                .font(.system(size: 30, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundGradient: View {
    
    var colorTop: Color
    var colorBottom: String
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [colorTop, Color(colorBottom)]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View{
    
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View{
    
    var imageName: String
    var temperature: Int
    
    
    var body: some View{
        
        VStack (spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
            
        }
        .padding(.bottom, 40)
        
    }
}


    

