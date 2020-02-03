//
//  Cars.swift
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
    case car(description: VehicleDescription, engineType: EngineType, drivetrain: DrivetrainType)
}

struct VehicleDescription: Codable {
    let manufacturer: CarName
    let year: Int
}

enum CarName: AutoCodable, AutoEnumProperties {
    case Audi(audiModel: AudiModel)
    case BMW
    case Buick
    case Cadillac
    case Chevrolet
    case Chrysler
    case Dodge
    case Ferrari
    case Ford(fordModel: FordModel)
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
    case Mazda(mazdaModel: MazdaModel)
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
    case reciprocating(
        fuelType: [FuelType],
        architecture: EngineArchitecture,
        ignition: IgnitionType,
        cylinders: Int,
        airIntake: [AirIntakeType],
        stroke: StrokeType)
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
    case diesel(quality: [DieselFuelType])
}

enum PetrolFuelType: String, AutoCodable {
    case regular91 = "91"
    case premium95 = "95"
    case premium98 = "98"
    case e10 = "Ethanol 10"
    case e85 = "Ethanol 85"
}

enum DieselFuelType: String, AutoCodable {
    case petroleum = "Petroleum"
    case synthetic = "Syntetic"
    case biodiesel = "Biodiesel"
    case hydrogenated = "Hydrogated"
    case dimethylEther = "Dimethyl Ether"
}

extension Array {
    static var empty: Self { [] }
}
