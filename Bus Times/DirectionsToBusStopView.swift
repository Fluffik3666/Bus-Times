//
//  DirectionsToBusStopView.swift
//  Bus Times
//
//  Created by Fluffik3666 on 15/03/2024.
//

import SwiftUI
import MapKit
import CoreLocation


struct DirectionsToBusStopView: View {
	
	let locationManager = CLLocationManager()
	
	@State var region = MKCoordinateRegion(
		center: .init(latitude: 37.334_900,longitude: -122.009_020),
		span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
	)
	
	var body: some View {
		Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
			.edgesIgnoringSafeArea(.all)
			.onAppear {
				locationManager.requestWhenInUseAuthorization()
			}
	}
}

struct DirectionsToBusStopView_Previews: PreviewProvider {
	static var previews: some View {
		DirectionsToBusStopView()
	}
}

#Preview {
    DirectionsToBusStopView()
}
