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

}
internal extension Vehicle {

    var engines: Int? {
        switch self {
             case .car(let description,let engineType,let drivetrain):
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


