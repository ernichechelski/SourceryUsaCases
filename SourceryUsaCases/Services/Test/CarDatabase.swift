//
//  CarDatabase.swift
//  SourceryUsaCases
//
//  Created by Ernest Chechelski on 03/02/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//
//  associated values names must be distinc between cases
//

func testCarDatabase() {
    let database: Database = .init(vehicles: [
        .car(description: .init(manufacturer: .Audi(audiModel: .A3), year: 2002),
             engineType: .reciprocating(fuelType: [.petrol(quality: [.premium95])],
                                        architecture: .verticalInline,
                                        ignition: .compression,
                                        cylinders: 4,
                                        airIntake: [.turbocharged],
                                        stroke: .three),
             drivetrain: .AWD(awdType: .auto)),
        .car(description: .init(manufacturer: .Mazda(mazdaModel: .RX8), year: 2002),
             engineType: .rotary(airIntake: .empty),
             drivetrain: .RWD),
        .car(description: .init(manufacturer: .Ford(fordModel: .Mustang),
                                year: 2010),
             engineType: .reciprocating(fuelType: [.petrol(quality: [.premium98])],
                                        architecture: .V,
                                        ignition: .compression,
                                        cylinders: 8,
                                        airIntake: [.supercharged],
                                        stroke: .three),
             drivetrain: .RWD),
        .car(description: .init(manufacturer: .Honda, year: 1994), engineType: .reciprocating(fuelType: [.diesel(quality: [.biodiesel])], architecture: .verticalInline, ignition: .compression, cylinders: 4, airIntake: [], stroke: .three), drivetrain: .FWD)
    ])

    let audi = database.vehicles[0]

    let mazda = database.vehicles[1]

    if audi.carAssociatedValues?.description.year == mazda.carAssociatedValues?.description.year {
        print("Cars are from same year!")
    }

    print("Fuel types for reciprocating engines")
    database.vehicles
        .map({ $0.carAssociatedValues?.engineType.reciprocatingAssociatedValues?.fuelType})
        .compactMap { $0 }
        .flatMap { $0 }
        .map { ($0.dieselQuality?.map({ $0.rawValue }) ?? []) + ($0.petrolQuality?.map({$0.rawValue}) ?? [])}
        .forEach { print($0) }


    let x = database.vehicles.map { $0.carAssociatedValues?.drivetrain }.first
    if let x = x, let drivetrain = x {
        switch drivetrain {
        case .AWD(let awdType):
            print("First vehicle is AWD")
        case .FWD:
            print("First vehicle is FWD")
        case .RWD:
            print("First vehicle is RWD")
        }
    }
}
