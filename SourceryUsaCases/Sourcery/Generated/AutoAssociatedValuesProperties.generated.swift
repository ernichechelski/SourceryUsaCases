// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


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

    var rocketEngines: Int? {
        switch self {
            case .car(_,_,_):
                return nil
            case .rocket(let engines):
                return engines 
        }
    }

    var carAssociatedValues: (description: VehicleData, engineType: EngineType, drivetrain: DrivetrainType)? {
        switch self {
            case .car(let description,let engineType,let drivetrain):
                return (description,engineType,drivetrain)
            default: return nil
        }
    }
}


