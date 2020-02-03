// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension AWDType {

    enum CodingKeys: String, CodingKey {
        case partTime
        case allTime
        case auto
        case selectable
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys.partTime.rawValue: self = .partTime
        case CodingKeys.allTime.rawValue: self = .allTime
        case CodingKeys.auto.rawValue: self = .auto
        case CodingKeys.selectable.rawValue: self = .selectable
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .partTime: try container.encode(CodingKeys.partTime.rawValue)
        case .allTime: try container.encode(CodingKeys.allTime.rawValue)
        case .auto: try container.encode(CodingKeys.auto.rawValue)
        case .selectable: try container.encode(CodingKeys.selectable.rawValue)
        }
    }

}

extension AirIntakeType {

    enum CodingKeys: String, CodingKey {
        case naturallyAspirated
        case supercharged
        case turbocharged
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys.naturallyAspirated.rawValue: self = .naturallyAspirated
        case CodingKeys.supercharged.rawValue: self = .supercharged
        case CodingKeys.turbocharged.rawValue: self = .turbocharged
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .naturallyAspirated: try container.encode(CodingKeys.naturallyAspirated.rawValue)
        case .supercharged: try container.encode(CodingKeys.supercharged.rawValue)
        case .turbocharged: try container.encode(CodingKeys.turbocharged.rawValue)
        }
    }

}

extension DieselFuelType {

    enum CodingKeys: String, CodingKey {
        case petroleum
        case synthetic
        case biodiesel
        case hydrogenated
        case dimethylEther
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys.petroleum.rawValue: self = .petroleum
        case CodingKeys.synthetic.rawValue: self = .synthetic
        case CodingKeys.biodiesel.rawValue: self = .biodiesel
        case CodingKeys.hydrogenated.rawValue: self = .hydrogenated
        case CodingKeys.dimethylEther.rawValue: self = .dimethylEther
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .petroleum: try container.encode(CodingKeys.petroleum.rawValue)
        case .synthetic: try container.encode(CodingKeys.synthetic.rawValue)
        case .biodiesel: try container.encode(CodingKeys.biodiesel.rawValue)
        case .hydrogenated: try container.encode(CodingKeys.hydrogenated.rawValue)
        case .dimethylEther: try container.encode(CodingKeys.dimethylEther.rawValue)
        }
    }

}

extension DrivetrainType {

    enum CodingKeys: String, CodingKey {
        case AWD
        case FWD
        case RWD
        case type
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        if container.allKeys.contains(.AWD), try container.decodeNil(forKey: .AWD) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .AWD)
            let type = try associatedValues.decode(AWDType.self, forKey: .type)
            self = .AWD(type: type)
            return
        }
        if container.allKeys.contains(.FWD), try container.decodeNil(forKey: .FWD) == false {
            self = .FWD
            return
        }
        if container.allKeys.contains(.RWD), try container.decodeNil(forKey: .RWD) == false {
            self = .RWD
            return
        }
        throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case"))
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case let .AWD(type):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .AWD)
            try associatedValues.encode(type, forKey: .type)
        case .FWD:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .FWD)
        case .RWD:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .RWD)
        }
    }

}

extension EngineArchitecture {

    enum CodingKeys: String, CodingKey {
        case verticalInline
        case horizontalInline
        case V
        case W
        case opposed
        case OPOC
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys.verticalInline.rawValue: self = .verticalInline
        case CodingKeys.horizontalInline.rawValue: self = .horizontalInline
        case CodingKeys.V.rawValue: self = .V
        case CodingKeys.W.rawValue: self = .W
        case CodingKeys.opposed.rawValue: self = .opposed
        case CodingKeys.OPOC.rawValue: self = .OPOC
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .verticalInline: try container.encode(CodingKeys.verticalInline.rawValue)
        case .horizontalInline: try container.encode(CodingKeys.horizontalInline.rawValue)
        case .V: try container.encode(CodingKeys.V.rawValue)
        case .W: try container.encode(CodingKeys.W.rawValue)
        case .opposed: try container.encode(CodingKeys.opposed.rawValue)
        case .OPOC: try container.encode(CodingKeys.OPOC.rawValue)
        }
    }

}

extension EngineType {

    enum CodingKeys: String, CodingKey {
        case reciprocating
        case rotary
        case electric
        case fuelType
        case architecture
        case ignition
        case cylinders
        case airIntake
        case stroke
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        if container.allKeys.contains(.reciprocating), try container.decodeNil(forKey: .reciprocating) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .reciprocating)
            let fuelType = try associatedValues.decode([FuelType].self, forKey: .fuelType)
            let architecture = try associatedValues.decode(EngineArchitecture.self, forKey: .architecture)
            let ignition = try associatedValues.decode(IgnitionType.self, forKey: .ignition)
            let cylinders = try associatedValues.decode(Int.self, forKey: .cylinders)
            let airIntake = try associatedValues.decode([AirIntakeType].self, forKey: .airIntake)
            let stroke = try associatedValues.decode(StrokeType.self, forKey: .stroke)
            self = .reciprocating(fuelType: fuelType, architecture: architecture, ignition: ignition, cylinders: cylinders, airIntake: airIntake, stroke: stroke)
            return
        }
        if container.allKeys.contains(.rotary), try container.decodeNil(forKey: .rotary) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .rotary)
            let airIntake = try associatedValues.decode([AirIntakeType].self, forKey: .airIntake)
            self = .rotary(airIntake: airIntake)
            return
        }
        if container.allKeys.contains(.electric), try container.decodeNil(forKey: .electric) == false {
            self = .electric
            return
        }
        throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case"))
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case let .reciprocating(fuelType, architecture, ignition, cylinders, airIntake, stroke):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .reciprocating)
            try associatedValues.encode(fuelType, forKey: .fuelType)
            try associatedValues.encode(architecture, forKey: .architecture)
            try associatedValues.encode(ignition, forKey: .ignition)
            try associatedValues.encode(cylinders, forKey: .cylinders)
            try associatedValues.encode(airIntake, forKey: .airIntake)
            try associatedValues.encode(stroke, forKey: .stroke)
        case let .rotary(airIntake):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .rotary)
            try associatedValues.encode(airIntake, forKey: .airIntake)
        case .electric:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .electric)
        }
    }

}

extension FuelType {

    enum CodingKeys: String, CodingKey {
        case petrol
        case diesel
        case quality
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        if container.allKeys.contains(.petrol), try container.decodeNil(forKey: .petrol) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .petrol)
            let quality = try associatedValues.decode([PetrolFuelType].self, forKey: .quality)
            self = .petrol(quality: quality)
            return
        }
        if container.allKeys.contains(.diesel), try container.decodeNil(forKey: .diesel) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .diesel)
            let quality = try associatedValues.decode(Int.self, forKey: .quality)
            self = .diesel(quality: quality)
            return
        }
        throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case"))
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case let .petrol(quality):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .petrol)
            try associatedValues.encode(quality, forKey: .quality)
        case let .diesel(quality):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .diesel)
            try associatedValues.encode(quality, forKey: .quality)
        }
    }

}

extension IgnitionType {

    enum CodingKeys: String, CodingKey {
        case compression
        case spark
        case homogeneousChargeCompression
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys.compression.rawValue: self = .compression
        case CodingKeys.spark.rawValue: self = .spark
        case CodingKeys.homogeneousChargeCompression.rawValue: self = .homogeneousChargeCompression
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .compression: try container.encode(CodingKeys.compression.rawValue)
        case .spark: try container.encode(CodingKeys.spark.rawValue)
        case .homogeneousChargeCompression: try container.encode(CodingKeys.homogeneousChargeCompression.rawValue)
        }
    }

}

extension PetrolFuelType {

    enum CodingKeys: String, CodingKey {
        case regular91
        case premium95
        case premium98
        case e10
        case e85
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys.regular91.rawValue: self = .regular91
        case CodingKeys.premium95.rawValue: self = .premium95
        case CodingKeys.premium98.rawValue: self = .premium98
        case CodingKeys.e10.rawValue: self = .e10
        case CodingKeys.e85.rawValue: self = .e85
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .regular91: try container.encode(CodingKeys.regular91.rawValue)
        case .premium95: try container.encode(CodingKeys.premium95.rawValue)
        case .premium98: try container.encode(CodingKeys.premium98.rawValue)
        case .e10: try container.encode(CodingKeys.e10.rawValue)
        case .e85: try container.encode(CodingKeys.e85.rawValue)
        }
    }

}

extension StrokeType {

    enum CodingKeys: String, CodingKey {
        case two
        case three
        case six
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys.two.rawValue: self = .two
        case CodingKeys.three.rawValue: self = .three
        case CodingKeys.six.rawValue: self = .six
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .two: try container.encode(CodingKeys.two.rawValue)
        case .three: try container.encode(CodingKeys.three.rawValue)
        case .six: try container.encode(CodingKeys.six.rawValue)
        }
    }

}

extension Vehicle {

    enum CodingKeys: String, CodingKey {
        case car
        case rocket
        case description
        case engineType
        case drivetrain
        case engines
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        if container.allKeys.contains(.car), try container.decodeNil(forKey: .car) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .car)
            let description = try associatedValues.decode(VehicleData.self, forKey: .description)
            let engineType = try associatedValues.decode(EngineType.self, forKey: .engineType)
            let drivetrain = try associatedValues.decode(DrivetrainType.self, forKey: .drivetrain)
            self = .car(description: description, engineType: engineType, drivetrain: drivetrain)
            return
        }
        if container.allKeys.contains(.rocket), try container.decodeNil(forKey: .rocket) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .rocket)
            let engines = try associatedValues.decode(Int.self, forKey: .engines)
            self = .rocket(engines: engines)
            return
        }
        throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case"))
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case let .car(description, engineType, drivetrain):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .car)
            try associatedValues.encode(description, forKey: .description)
            try associatedValues.encode(engineType, forKey: .engineType)
            try associatedValues.encode(drivetrain, forKey: .drivetrain)
        case let .rocket(engines):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .rocket)
            try associatedValues.encode(engines, forKey: .engines)
        }
    }

}
