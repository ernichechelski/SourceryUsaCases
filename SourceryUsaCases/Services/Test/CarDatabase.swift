//
//  CarDatabase.swift
//  SourceryUsaCases
//
//  Created by Ernest Chechelski on 03/02/2020.
//  Copyright © 2020 Ernest Chechelski. All rights reserved.
//

import Foundation

struct Database: Codable {
    let vehicles: [Vehicle]
}

enum Vehicle: AutoCodable, AutoEnumProperties {
    case car(description: VehicleData, engineType: EngineType, drivetrain: DrivetrainType)
}

struct VehicleData: Codable {
    let manufacturer: CarName
    let year: Int
}

enum CarName: AutoCodable, AutoEnumProperties {
    case Audi(model: AudiModel)
    case BMW
    case Buick
    case Cadillac
    case Chevrolet
    case Chrysler
    case Dodge
    case Ferrari
    case Ford(model: FordModel)
    case GM
    case GEM
    case GMC
    case Honda
    case Hummer
    case Hyundai
    case Infiniti
    case Isuzu
    case Jaguar
    case Jeep
    case Kia
    case Lamborghini
    case LandRover
    case Lexus
    case Lincoln
    case Lotus
    case Mazda(model: MazdaModel)
    case MercedesBenz
    case Mercury
    case Mitsubishi
    case Nissan
    case Oldsmobile
    case Peugeot
    case Pontiac
    case Porsche
    case Regal
    case Saab
    case Saturn
    case Subaru
    case Suzuki
    case Toyota
    case Volkswagen
    case Volvo
}

enum AudiModel: AutoCodable {
    case _50, F103, _60, _80, _90, quattro, S2, _100, _200, _100CoupeS, A1, S1, A2, A3, S3, A4, RS4, S4, A5, S5, RS5, A6, S6, RS6, A7, RS7, S7, A8, S8, Q2, Q3, Q5, Q7, Q8, R8, TT, V8, etron
}

enum FordModel: AutoCodable {
    case Mustang, Fiesta
}

enum MazdaModel: AutoCodable {
    case RX8, RX7, MX5
}

enum EngineType: AutoCodable, AutoEnumProperties {
    case reciprocating(fuelType: [FuelType], architecture: EngineArchitecture, ignition: IgnitionType, cylinders: Int, airIntake: [AirIntakeType], stroke: StrokeType)
    case rotary(airIntake: [AirIntakeType])
    case electric
}

enum DrivetrainType: AutoCodable, AutoEnumProperties {
    case AWD(awdType: AWDType)
    case FWD
    case RWD
}

enum AWDType: AutoCodable {
    case partTime
    case allTime
    case auto
    case selectable
}

enum StrokeType: AutoCodable {
    case two
    case three
    case six
}

enum AirIntakeType: AutoCodable {
    case naturallyAspirated
    case supercharged
    case turbocharged
}

enum IgnitionType: AutoCodable {
    case compression
    case spark
    case homogeneousChargeCompression
}

enum EngineArchitecture: AutoCodable {
    case verticalInline
    case horizontalInline
    case V
    case W
    case opposed
    case OPOC
}

enum FuelType: AutoCodable, AutoEnumProperties {
    case petrol(quality: [PetrolFuelType])
    case diesel(quality: Int)
}

enum PetrolFuelType: AutoCodable {
    case regular91
    case premium95
    case premium98
    case e10
    case e85
}

enum DieselFuelType: AutoCodable {
    case petroleum
    case synthetic
    case biodiesel
    case hydrogenated
    case dimethylEther
}

func testEnums() {
    let garage = Database(vehicles: [
        .car(description: .init(manufacturer: .Audi(model: .A3), year: 2002),
             engineType: .reciprocating(fuelType: [.petrol(quality: [.premium95])],
                                        architecture: .verticalInline,
                                        ignition: .compression,
                                        cylinders: 4,
                                        airIntake: [.turbocharged],
                                        stroke: .three),
             drivetrain: .AWD(awdType: .auto)),
        .car(description: .init(manufacturer: .Mazda(model: .RX8), year: 2002),
             engineType: .rotary(airIntake: []),
             drivetrain: .RWD),
        .car(description: .init(manufacturer: .Ford(model: .Mustang), year: 2010), engineType: .reciprocating(fuelType: [.petrol(quality: [.premium98])], architecture: .V, ignition: .compression, cylinders: 8, airIntake: [.supercharged], stroke: .three), drivetrain: .RWD)
    ])
    let garage2 = Database.from(jsonString: garage.asJSON)
    let audi = garage.vehicles[0]
    let mazda = garage.vehicles[1]

    if audi.carAssociatedValues?.description.year == mazda.carAssociatedValues?.description.year {
        print("Cars are from same year!")
    }
}
