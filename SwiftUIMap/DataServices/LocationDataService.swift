//
//  LocationDataService.swift
//  SwiftUIMap
//
//  Created by Ahmed Kasem on 03/01/2023.
//

import Foundation
import MapKit

class LocationDataService {
    
    static let locations: [Location] =
    [
        Location(
            name: "Mojul",
            cityName: "ElMahalla ElKobra",
            coordinetes: CLLocationCoordinate2D(latitude: 41.62536, longitude: 12.625632),
            description: "jhasdfhgsjdgfdsjkf",
            imageNames: [
                "pay-page3Full",
                "pay-page3Full",
                "pay-page3Full"
            ],
            link: "www.google.com"),
        Location(
            name: "Mahalla",
            cityName: "ElMahalla ElKobra",
            coordinetes: CLLocationCoordinate2D(latitude: 41.62537, longitude: 12.625633),
            description: "jhasdfhgsjdgfdsjkf",
            imageNames: [
                "pay-page3Full",
                "pay-page3Full",
                "pay-page3Full"
            ],
            link: "www.google.com")
    ]
}
