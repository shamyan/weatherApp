//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Harutyun Shamyan on 31.07.22.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {

    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        VStack {

            VStack(spacing: 20) {
                Text("Welcome to the Weather App")
                    .bold().font(.title)

                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            .buttonStyle(.borderedProminent)
            .tint(.blue)

        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
    }

}

struct WelcomeView_Previews: PreviewProvider {

    static var previews: some View {
        WelcomeView()
            .environmentObject(LocationManager())
    }

}
