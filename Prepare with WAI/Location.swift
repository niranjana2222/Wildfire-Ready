//
//  Location.swift
//  Prepare with WAI
//
//  Created by sunitha on 2/21/23.
//

import Foundation
import SwiftUI
import MapKit

struct Location: View
{
    @State var val = 20.0
    //UNSURE
    @StateObject private var viewModel = ContentViewModel()
    @State private var username: String = ""
    @State private var name: String = ""
    @State var addLocation = false
    @State var address = ""
    @State var location = ""
    @State var editing = false

    var body: some View
    {
        NavigationView
        {
            VStack {
                //Spacer()
                Text("Emergency Location")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.top, -80.0)
                
                HStack {
                    Spacer()
                    Spacer()
                    Text("Choose a common emergency meeting location for your family")
                    Spacer()
                    Spacer()
                }
                .padding(.top, -50.0)
                //Spacer()
                ZStack {
                    //Map
                    Map(coordinateRegion:$viewModel.region, showsUserLocation: true)
                        .ignoresSafeArea()
                        .accentColor(Color(.systemPink))
                        .onAppear {
                            viewModel.checkIfLocationServicesIsEnabled()
                        }
                    //zoom in
                    
                    Button {
                        val -= 5
                        withAnimation {
                            viewModel.region.span = MKCoordinateSpan(
                                latitudeDelta: val,
                                longitudeDelta: val)
                        }
                    } label: {
                        Text("+")
                            .font(.title)
                            .padding([.top, .leading], 290.0)
                    }
                    //zoom out
                    Button {
                        val += 5
                        withAnimation {
                            viewModel.region.span = MKCoordinateSpan(
                            latitudeDelta: val,
                            longitudeDelta: val)
                        }
                    } label: {
                        Text("_")
                            .font(.title)
                            .padding(.leading, 250.0)
                            .padding(.top, 270.0)
                    }
                    
                    if viewModel.alert {
                        Text("FIX YOUR LOCATION")
                    }
                    else if viewModel.restricted {
                        Text("Your location is restricted likely due to parental controls")
                    }
                    else if viewModel.denied {
                        Text("You have denied this app location permission. Go into settings to change it.")
                    }
                }
                Spacer()
                if !addLocation {
                    Button(action: {
                        addLocation = true
                        editing = true
                    }, label: {
                        if (address.count > 0) {
                            Text("Edit Meeting Point")
                        }
                        else {
                            Text("+ Add Meeting Point")
                        }
                    })
                        .buttonStyle(.borderedProminent)
                        .tint(.blue)
                        
                }
                
                Spacer()
                    .frame(height:20)
                
                if address.count > 0 && !editing {
                    Text(location)
                    Text(address)
                }
                
                if addLocation {
                    Form {
                        TextField(text: $location, prompt: Text("Location Name")) {
                            //Text("Username")
                        }
                        
                        TextField(text: $address, prompt: Text("Address")) {
                            //Text("Username")
                        }
                    }
                    .frame(height:175)
                
                    Button(action: {
                        addLocation = false
                        editing = false
                        location = "home"
                        address = "11601 "
                    }, label: {
                        Text("Save")})
            }
            
            }
        }
    }
}
 
//GET USER LOCATION CLASS
final class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var alert = false
    @Published var restricted = false
    @Published var denied = false
    @Published var region = MKCoordinateRegion (
        center: CLLocationCoordinate2D(
            latitude: 37,
            longitude: -122),
        span: MKCoordinateSpan(
            latitudeDelta: 4.0,
            longitudeDelta: 4.0)
        )
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
            
        } else {
            alert = true
        }
    }
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else {return}
        
        switch locationManager.authorizationStatus {
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case .restricted:
                restricted = true
            case .denied:
                denied = true
            case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(
                center: locationManager.location!.coordinate,
                span: MKCoordinateSpan(
                    latitudeDelta: 4.0,
                    longitudeDelta: 4.0)
            )
            @unknown default:
                break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}

