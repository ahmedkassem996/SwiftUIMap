//
//  LocationsViewModel.swift
//  SwiftUIMap
//
//  Created by Ahmed Kasem on 08/01/2023.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapregion(location: mapLocation)
        }
    }
    
    // show list of locations
    @Published var showLocationsList: Bool = false
    
    @Published var sheetLocation: Location? = nil
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init () {
        let locations = LocationDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapregion(location: locations.first!)
    }
    
    private func updateMapregion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(center: location.coordinetes, span: mapSpan)
        }
    }
    
    func toggleLocationList() {
        withAnimation(.easeInOut) {
//            showLocationsList = !showLocationsList
            showLocationsList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    func nextBtnPressed() {
        // Get the current index
        guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation}) else {return}
        
        // check if the current index is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // next index is not valid
            // restart from 0
            
            guard let firstLocation = locations.first else {return}
            showNextLocation(location: firstLocation)
            return
        }
        
        // next index is valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
    
}
