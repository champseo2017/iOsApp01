//
//  MapView.swift
//  SwiftUIMap
//
//  Created by Champ on 9/1/2565 BE.
//

import Foundation
import MapKit
import SwiftUI
import UIKit

struct MapView: UIViewRepresentable {
    typealias UIViewType = UIView
    var coordinate: CLLocationCoordinate2D
//        CLLocationCoordinate2D(latitude: 18.796143, longitude: 98.979263)
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let map = MKMapView()
        map.setRegion(MKCoordinateRegion(center: coordinate,
                                         span: MKCoordinateSpan(latitudeDelta: 0.7, longitudeDelta: 0.7)),
                      animated: true
        )
        view.addSubview(map)
        map.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            map.widthAnchor.constraint(equalTo: view.widthAnchor),
            map.heightAnchor.constraint(equalTo: view.heightAnchor),
            map.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            map.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        map.addAnnotation(pin)
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // do nothing
    }
}
