// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


internal extension DrivetrainType {

    var type: AWDType? {
        switch self {
             case .AWD(let type):
                return type
             case .FWD:
                return nil
             case .RWD:
                return nil
        }
    }

        var AWDAssociatedValues: (type: AWDType)? {
            switch self {
                 case .AWD(let type):
                    return (type)
                  default: return nil
            }
        }
}
internal extension Vehicle {

    var description: VehicleData? {
        switch self {
             case .car(let description,let engineType,let drivetrain):
                return description
             case .rocketlet engines):
                return description
        }
    }
    var engineType: EngineType? {
        switch self {
             case .car(let description,let engineType,let drivetrain):
                return engineType
             case .rocketlet engines):
                return engineType
        }
    }
    var drivetrain: DrivetrainType? {
        switch self {
             case .car(let description,let engineType,let drivetrain):
                return drivetrain
             case .rocketlet engines):
                return drivetrain
        }
    }
    var engines: Int? {
        switch self {
             case .car(let description,let engineType,let drivetrain):
                return engines
             case .rocketlet engines):
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
        var rocketAssociatedValues: (engines: Int)? {
            switch self {
                 case .rocket(let engines):
                    return (engines)
                  default: return nil
            }
        }
}


