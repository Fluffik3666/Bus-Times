//
//  ContentView.swift
//  Bus Times
//
//  Created by Fluffik3666 on 15/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		Text("Live TFL Bus times")
			.font(.largeTitle)
			.fontWeight(.bold)
			.frame(maxWidth: .infinity, alignment: .topLeading)
			.padding()
		
		Spacer()
		
		VStack {
			NavigationStack {
				NavigationLink {
					FindBusView()
						.navigationTitle("Find your bus")
				} label: {
					HStack {
						Text("Find your bus")
						Spacer()
						Image(systemName: "questionmark")
							.font(.largeTitle)
							.scaledToFit()
							.foregroundColor(.teal)
					}
				}
				NavigationLink {
					GetBusTimesView()
						.navigationTitle("Get bus times")
				} label: {
					HStack {
						Text("Get bus times")
						Spacer()
						Image(systemName: "bus")
							.font(.largeTitle)
							.scaledToFit()
							.foregroundColor(.teal)
					}
				}
				NavigationLink {
					DirectionsToBusStopView()
						.navigationTitle("Directions to nearest bus stop")
				} label: {
					HStack {
						Text("Directions to nearest bus stop")
						Spacer()
						Image(systemName: "map.fill")
							.font(.largeTitle)
							.scaledToFit()
							.foregroundColor(.teal)
					}
				}
			}.navigationBarTitle("").navigationBarHidden(false)
		}
		
		.padding()
		
		Text("2024 Fluffik3666")
			.bold()


		

        .padding()
    }
}

#Preview {
    ContentView()
}
