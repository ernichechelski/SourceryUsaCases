// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


internal extension CarName {
    var AudiModel: AudiModel? {
        switch self {
            case .Audi(let model):
                return model 
            case .BMW: return nil
            case .Buick: return nil
            case .Cadillac: return nil
            case .Chevrolet: return nil
            case .Chrysler: return nil
            case .Dodge: return nil
            case .Ferrari: return nil
            case .Ford(let model):
                return nil
            case .GM: return nil
            case .GEM: return nil
            case .GMC: return nil
            case .Honda: return nil
            case .Hummer: return nil
            case .Hyundai: return nil
            case .Infiniti: return nil
            case .Isuzu: return nil
            case .Jaguar: return nil
            case .Jeep: return nil
            case .Kia: return nil
            case .Lamborghini: return nil
            case .LandRover: return nil
            case .Lexus: return nil
            case .Lincoln: return nil
            case .Lotus: return nil
            case .Mazda(let model):
                return nil
            case .MercedesBenz: return nil
            case .Mercury: return nil
            case .Mitsubishi: return nil
            case .Nissan: return nil
            case .Oldsmobile: return nil
            case .Peugeot: return nil
            case .Pontiac: return nil
            case .Porsche: return nil
            case .Regal: return nil
            case .Saab: return nil
            case .Saturn: return nil
            case .Subaru: return nil
            case .Suzuki: return nil
            case .Toyota: return nil
            case .Volkswagen: return nil
            case .Volvo: return nil
        }
    }
    var FordModel: FordModel? {
        switch self {
            case .Audi(let model):
                return nil
            case .BMW: return nil
            case .Buick: return nil
            case .Cadillac: return nil
            case .Chevrolet: return nil
            case .Chrysler: return nil
            case .Dodge: return nil
            case .Ferrari: return nil
            case .Ford(let model):
                return model 
            case .GM: return nil
            case .GEM: return nil
            case .GMC: return nil
            case .Honda: return nil
            case .Hummer: return nil
            case .Hyundai: return nil
            case .Infiniti: return nil
            case .Isuzu: return nil
            case .Jaguar: return nil
            case .Jeep: return nil
            case .Kia: return nil
            case .Lamborghini: return nil
            case .LandRover: return nil
            case .Lexus: return nil
            case .Lincoln: return nil
            case .Lotus: return nil
            case .Mazda(let model):
                return nil
            case .MercedesBenz: return nil
            case .Mercury: return nil
            case .Mitsubishi: return nil
            case .Nissan: return nil
            case .Oldsmobile: return nil
            case .Peugeot: return nil
            case .Pontiac: return nil
            case .Porsche: return nil
            case .Regal: return nil
            case .Saab: return nil
            case .Saturn: return nil
            case .Subaru: return nil
            case .Suzuki: return nil
            case .Toyota: return nil
            case .Volkswagen: return nil
            case .Volvo: return nil
        }
    }
    var MazdaModel: MazdaModel? {
        switch self {
            case .Audi(let model):
                return nil
            case .BMW: return nil
            case .Buick: return nil
            case .Cadillac: return nil
            case .Chevrolet: return nil
            case .Chrysler: return nil
            case .Dodge: return nil
            case .Ferrari: return nil
            case .Ford(let model):
                return nil
            case .GM: return nil
            case .GEM: return nil
            case .GMC: return nil
            case .Honda: return nil
            case .Hummer: return nil
            case .Hyundai: return nil
            case .Infiniti: return nil
            case .Isuzu: return nil
            case .Jaguar: return nil
            case .Jeep: return nil
            case .Kia: return nil
            case .Lamborghini: return nil
            case .LandRover: return nil
            case .Lexus: return nil
            case .Lincoln: return nil
            case .Lotus: return nil
            case .Mazda(let model):
                return model 
            case .MercedesBenz: return nil
            case .Mercury: return nil
            case .Mitsubishi: return nil
            case .Nissan: return nil
            case .Oldsmobile: return nil
            case .Peugeot: return nil
            case .Pontiac: return nil
            case .Porsche: return nil
            case .Regal: return nil
            case .Saab: return nil
            case .Saturn: return nil
            case .Subaru: return nil
            case .Suzuki: return nil
            case .Toyota: return nil
            case .Volkswagen: return nil
            case .Volvo: return nil
        }
    }
}
internal extension DrivetrainType {
    var AWDAwdtype: AWDType? {
        switch self {
            case .AWD(let awdType):
                return awdType 
            case .FWD: return nil
            case .RWD: return nil
        }
    }
}
internal extension EngineType {
    var rotaryAirintake: [AirIntakeType]? {
        switch self {
            case .reciprocating(_,_,_,_,let airIntake,_):
                return nil
            case .rotary(let airIntake):
                return airIntake 
            case .electric: return nil
        }
    }
    var reciprocatingAssociatedValues: (fuelType: [FuelType], architecture: EngineArchitecture, ignition: IgnitionType, cylinders: Int, airIntake: [AirIntakeType], stroke: StrokeType)? {
        switch self {
            case .reciprocating(let fuelType,let architecture,let ignition,let cylinders,let airIntake,let stroke):
                return (fuelType,architecture,ignition,cylinders,airIntake,stroke)
            default: return nil
        }
    }
}
internal extension FuelType {
    var petrolQuality: [PetrolFuelType]? {
        switch self {
            case .petrol(let quality):
                return quality 
            case .diesel(let quality):
                return nil
        }
    }
    var dieselQuality: Int? {
        switch self {
            case .petrol(let quality):
                return nil
            case .diesel(let quality):
                return quality 
        }
    }
}
internal extension Vehicle {
    var carAssociatedValues: (description: VehicleData, engineType: EngineType, drivetrain: DrivetrainType)? {
        switch self {
            case .car(let description,let engineType,let drivetrain):
                return (description,engineType,drivetrain)
            default: return nil
        }
    }
}


