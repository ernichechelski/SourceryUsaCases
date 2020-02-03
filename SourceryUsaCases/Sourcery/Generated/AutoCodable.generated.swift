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

extension AudiModel {

    enum CodingKeys: String, CodingKey {
        case _50
        case F103
        case _60
        case _80
        case _90
        case quattro
        case S2
        case _100
        case _200
        case _100CoupeS
        case A1
        case S1
        case A2
        case A3
        case S3
        case A4
        case RS4
        case S4
        case A5
        case S5
        case RS5
        case A6
        case S6
        case RS6
        case A7
        case RS7
        case S7
        case A8
        case S8
        case Q2
        case Q3
        case Q5
        case Q7
        case Q8
        case R8
        case TT
        case V8
        case etron
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys._50.rawValue: self = ._50
        case CodingKeys.F103.rawValue: self = .F103
        case CodingKeys._60.rawValue: self = ._60
        case CodingKeys._80.rawValue: self = ._80
        case CodingKeys._90.rawValue: self = ._90
        case CodingKeys.quattro.rawValue: self = .quattro
        case CodingKeys.S2.rawValue: self = .S2
        case CodingKeys._100.rawValue: self = ._100
        case CodingKeys._200.rawValue: self = ._200
        case CodingKeys._100CoupeS.rawValue: self = ._100CoupeS
        case CodingKeys.A1.rawValue: self = .A1
        case CodingKeys.S1.rawValue: self = .S1
        case CodingKeys.A2.rawValue: self = .A2
        case CodingKeys.A3.rawValue: self = .A3
        case CodingKeys.S3.rawValue: self = .S3
        case CodingKeys.A4.rawValue: self = .A4
        case CodingKeys.RS4.rawValue: self = .RS4
        case CodingKeys.S4.rawValue: self = .S4
        case CodingKeys.A5.rawValue: self = .A5
        case CodingKeys.S5.rawValue: self = .S5
        case CodingKeys.RS5.rawValue: self = .RS5
        case CodingKeys.A6.rawValue: self = .A6
        case CodingKeys.S6.rawValue: self = .S6
        case CodingKeys.RS6.rawValue: self = .RS6
        case CodingKeys.A7.rawValue: self = .A7
        case CodingKeys.RS7.rawValue: self = .RS7
        case CodingKeys.S7.rawValue: self = .S7
        case CodingKeys.A8.rawValue: self = .A8
        case CodingKeys.S8.rawValue: self = .S8
        case CodingKeys.Q2.rawValue: self = .Q2
        case CodingKeys.Q3.rawValue: self = .Q3
        case CodingKeys.Q5.rawValue: self = .Q5
        case CodingKeys.Q7.rawValue: self = .Q7
        case CodingKeys.Q8.rawValue: self = .Q8
        case CodingKeys.R8.rawValue: self = .R8
        case CodingKeys.TT.rawValue: self = .TT
        case CodingKeys.V8.rawValue: self = .V8
        case CodingKeys.etron.rawValue: self = .etron
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case ._50: try container.encode(CodingKeys._50.rawValue)
        case .F103: try container.encode(CodingKeys.F103.rawValue)
        case ._60: try container.encode(CodingKeys._60.rawValue)
        case ._80: try container.encode(CodingKeys._80.rawValue)
        case ._90: try container.encode(CodingKeys._90.rawValue)
        case .quattro: try container.encode(CodingKeys.quattro.rawValue)
        case .S2: try container.encode(CodingKeys.S2.rawValue)
        case ._100: try container.encode(CodingKeys._100.rawValue)
        case ._200: try container.encode(CodingKeys._200.rawValue)
        case ._100CoupeS: try container.encode(CodingKeys._100CoupeS.rawValue)
        case .A1: try container.encode(CodingKeys.A1.rawValue)
        case .S1: try container.encode(CodingKeys.S1.rawValue)
        case .A2: try container.encode(CodingKeys.A2.rawValue)
        case .A3: try container.encode(CodingKeys.A3.rawValue)
        case .S3: try container.encode(CodingKeys.S3.rawValue)
        case .A4: try container.encode(CodingKeys.A4.rawValue)
        case .RS4: try container.encode(CodingKeys.RS4.rawValue)
        case .S4: try container.encode(CodingKeys.S4.rawValue)
        case .A5: try container.encode(CodingKeys.A5.rawValue)
        case .S5: try container.encode(CodingKeys.S5.rawValue)
        case .RS5: try container.encode(CodingKeys.RS5.rawValue)
        case .A6: try container.encode(CodingKeys.A6.rawValue)
        case .S6: try container.encode(CodingKeys.S6.rawValue)
        case .RS6: try container.encode(CodingKeys.RS6.rawValue)
        case .A7: try container.encode(CodingKeys.A7.rawValue)
        case .RS7: try container.encode(CodingKeys.RS7.rawValue)
        case .S7: try container.encode(CodingKeys.S7.rawValue)
        case .A8: try container.encode(CodingKeys.A8.rawValue)
        case .S8: try container.encode(CodingKeys.S8.rawValue)
        case .Q2: try container.encode(CodingKeys.Q2.rawValue)
        case .Q3: try container.encode(CodingKeys.Q3.rawValue)
        case .Q5: try container.encode(CodingKeys.Q5.rawValue)
        case .Q7: try container.encode(CodingKeys.Q7.rawValue)
        case .Q8: try container.encode(CodingKeys.Q8.rawValue)
        case .R8: try container.encode(CodingKeys.R8.rawValue)
        case .TT: try container.encode(CodingKeys.TT.rawValue)
        case .V8: try container.encode(CodingKeys.V8.rawValue)
        case .etron: try container.encode(CodingKeys.etron.rawValue)
        }
    }

}

extension CarName {

    enum CodingKeys: String, CodingKey {
        case Audi
        case BMW
        case Buick
        case Cadillac
        case Chevrolet
        case Chrysler
        case Dodge
        case Ferrari
        case Ford
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
        case Mazda
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
        case audiModel
        case fordModel
        case mazdaModel
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        if container.allKeys.contains(.Audi), try container.decodeNil(forKey: .Audi) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Audi)
            let audiModel = try associatedValues.decode(AudiModel.self, forKey: .audiModel)
            self = .Audi(audiModel: audiModel)
            return
        }
        if container.allKeys.contains(.BMW), try container.decodeNil(forKey: .BMW) == false {
            self = .BMW
            return
        }
        if container.allKeys.contains(.Buick), try container.decodeNil(forKey: .Buick) == false {
            self = .Buick
            return
        }
        if container.allKeys.contains(.Cadillac), try container.decodeNil(forKey: .Cadillac) == false {
            self = .Cadillac
            return
        }
        if container.allKeys.contains(.Chevrolet), try container.decodeNil(forKey: .Chevrolet) == false {
            self = .Chevrolet
            return
        }
        if container.allKeys.contains(.Chrysler), try container.decodeNil(forKey: .Chrysler) == false {
            self = .Chrysler
            return
        }
        if container.allKeys.contains(.Dodge), try container.decodeNil(forKey: .Dodge) == false {
            self = .Dodge
            return
        }
        if container.allKeys.contains(.Ferrari), try container.decodeNil(forKey: .Ferrari) == false {
            self = .Ferrari
            return
        }
        if container.allKeys.contains(.Ford), try container.decodeNil(forKey: .Ford) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Ford)
            let fordModel = try associatedValues.decode(FordModel.self, forKey: .fordModel)
            self = .Ford(fordModel: fordModel)
            return
        }
        if container.allKeys.contains(.GM), try container.decodeNil(forKey: .GM) == false {
            self = .GM
            return
        }
        if container.allKeys.contains(.GEM), try container.decodeNil(forKey: .GEM) == false {
            self = .GEM
            return
        }
        if container.allKeys.contains(.GMC), try container.decodeNil(forKey: .GMC) == false {
            self = .GMC
            return
        }
        if container.allKeys.contains(.Honda), try container.decodeNil(forKey: .Honda) == false {
            self = .Honda
            return
        }
        if container.allKeys.contains(.Hummer), try container.decodeNil(forKey: .Hummer) == false {
            self = .Hummer
            return
        }
        if container.allKeys.contains(.Hyundai), try container.decodeNil(forKey: .Hyundai) == false {
            self = .Hyundai
            return
        }
        if container.allKeys.contains(.Infiniti), try container.decodeNil(forKey: .Infiniti) == false {
            self = .Infiniti
            return
        }
        if container.allKeys.contains(.Isuzu), try container.decodeNil(forKey: .Isuzu) == false {
            self = .Isuzu
            return
        }
        if container.allKeys.contains(.Jaguar), try container.decodeNil(forKey: .Jaguar) == false {
            self = .Jaguar
            return
        }
        if container.allKeys.contains(.Jeep), try container.decodeNil(forKey: .Jeep) == false {
            self = .Jeep
            return
        }
        if container.allKeys.contains(.Kia), try container.decodeNil(forKey: .Kia) == false {
            self = .Kia
            return
        }
        if container.allKeys.contains(.Lamborghini), try container.decodeNil(forKey: .Lamborghini) == false {
            self = .Lamborghini
            return
        }
        if container.allKeys.contains(.LandRover), try container.decodeNil(forKey: .LandRover) == false {
            self = .LandRover
            return
        }
        if container.allKeys.contains(.Lexus), try container.decodeNil(forKey: .Lexus) == false {
            self = .Lexus
            return
        }
        if container.allKeys.contains(.Lincoln), try container.decodeNil(forKey: .Lincoln) == false {
            self = .Lincoln
            return
        }
        if container.allKeys.contains(.Lotus), try container.decodeNil(forKey: .Lotus) == false {
            self = .Lotus
            return
        }
        if container.allKeys.contains(.Mazda), try container.decodeNil(forKey: .Mazda) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Mazda)
            let mazdaModel = try associatedValues.decode(MazdaModel.self, forKey: .mazdaModel)
            self = .Mazda(mazdaModel: mazdaModel)
            return
        }
        if container.allKeys.contains(.MercedesBenz), try container.decodeNil(forKey: .MercedesBenz) == false {
            self = .MercedesBenz
            return
        }
        if container.allKeys.contains(.Mercury), try container.decodeNil(forKey: .Mercury) == false {
            self = .Mercury
            return
        }
        if container.allKeys.contains(.Mitsubishi), try container.decodeNil(forKey: .Mitsubishi) == false {
            self = .Mitsubishi
            return
        }
        if container.allKeys.contains(.Nissan), try container.decodeNil(forKey: .Nissan) == false {
            self = .Nissan
            return
        }
        if container.allKeys.contains(.Oldsmobile), try container.decodeNil(forKey: .Oldsmobile) == false {
            self = .Oldsmobile
            return
        }
        if container.allKeys.contains(.Peugeot), try container.decodeNil(forKey: .Peugeot) == false {
            self = .Peugeot
            return
        }
        if container.allKeys.contains(.Pontiac), try container.decodeNil(forKey: .Pontiac) == false {
            self = .Pontiac
            return
        }
        if container.allKeys.contains(.Porsche), try container.decodeNil(forKey: .Porsche) == false {
            self = .Porsche
            return
        }
        if container.allKeys.contains(.Regal), try container.decodeNil(forKey: .Regal) == false {
            self = .Regal
            return
        }
        if container.allKeys.contains(.Saab), try container.decodeNil(forKey: .Saab) == false {
            self = .Saab
            return
        }
        if container.allKeys.contains(.Saturn), try container.decodeNil(forKey: .Saturn) == false {
            self = .Saturn
            return
        }
        if container.allKeys.contains(.Subaru), try container.decodeNil(forKey: .Subaru) == false {
            self = .Subaru
            return
        }
        if container.allKeys.contains(.Suzuki), try container.decodeNil(forKey: .Suzuki) == false {
            self = .Suzuki
            return
        }
        if container.allKeys.contains(.Toyota), try container.decodeNil(forKey: .Toyota) == false {
            self = .Toyota
            return
        }
        if container.allKeys.contains(.Volkswagen), try container.decodeNil(forKey: .Volkswagen) == false {
            self = .Volkswagen
            return
        }
        if container.allKeys.contains(.Volvo), try container.decodeNil(forKey: .Volvo) == false {
            self = .Volvo
            return
        }
        throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case"))
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case let .Audi(audiModel):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Audi)
            try associatedValues.encode(audiModel, forKey: .audiModel)
        case .BMW:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .BMW)
        case .Buick:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Buick)
        case .Cadillac:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Cadillac)
        case .Chevrolet:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Chevrolet)
        case .Chrysler:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Chrysler)
        case .Dodge:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Dodge)
        case .Ferrari:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Ferrari)
        case let .Ford(fordModel):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Ford)
            try associatedValues.encode(fordModel, forKey: .fordModel)
        case .GM:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .GM)
        case .GEM:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .GEM)
        case .GMC:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .GMC)
        case .Honda:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Honda)
        case .Hummer:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Hummer)
        case .Hyundai:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Hyundai)
        case .Infiniti:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Infiniti)
        case .Isuzu:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Isuzu)
        case .Jaguar:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Jaguar)
        case .Jeep:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Jeep)
        case .Kia:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Kia)
        case .Lamborghini:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Lamborghini)
        case .LandRover:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .LandRover)
        case .Lexus:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Lexus)
        case .Lincoln:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Lincoln)
        case .Lotus:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Lotus)
        case let .Mazda(mazdaModel):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Mazda)
            try associatedValues.encode(mazdaModel, forKey: .mazdaModel)
        case .MercedesBenz:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .MercedesBenz)
        case .Mercury:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Mercury)
        case .Mitsubishi:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Mitsubishi)
        case .Nissan:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Nissan)
        case .Oldsmobile:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Oldsmobile)
        case .Peugeot:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Peugeot)
        case .Pontiac:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Pontiac)
        case .Porsche:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Porsche)
        case .Regal:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Regal)
        case .Saab:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Saab)
        case .Saturn:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Saturn)
        case .Subaru:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Subaru)
        case .Suzuki:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Suzuki)
        case .Toyota:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Toyota)
        case .Volkswagen:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Volkswagen)
        case .Volvo:
            _ = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .Volvo)
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
        case awdType
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        if container.allKeys.contains(.AWD), try container.decodeNil(forKey: .AWD) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .AWD)
            let awdType = try associatedValues.decode(AWDType.self, forKey: .awdType)
            self = .AWD(awdType: awdType)
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
        case let .AWD(awdType):
            var associatedValues = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .AWD)
            try associatedValues.encode(awdType, forKey: .awdType)
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

extension FordModel {

    enum CodingKeys: String, CodingKey {
        case Mustang
        case Fiesta
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys.Mustang.rawValue: self = .Mustang
        case CodingKeys.Fiesta.rawValue: self = .Fiesta
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .Mustang: try container.encode(CodingKeys.Mustang.rawValue)
        case .Fiesta: try container.encode(CodingKeys.Fiesta.rawValue)
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
            let quality = try associatedValues.decode([DieselFuelType].self, forKey: .quality)
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

extension MazdaModel {

    enum CodingKeys: String, CodingKey {
        case RX8
        case RX7
        case MX5
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys.RX8.rawValue: self = .RX8
        case CodingKeys.RX7.rawValue: self = .RX7
        case CodingKeys.MX5.rawValue: self = .MX5
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .RX8: try container.encode(CodingKeys.RX8.rawValue)
        case .RX7: try container.encode(CodingKeys.RX7.rawValue)
        case .MX5: try container.encode(CodingKeys.MX5.rawValue)
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
        case description
        case engineType
        case drivetrain
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        if container.allKeys.contains(.car), try container.decodeNil(forKey: .car) == false {
            let associatedValues = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .car)
            let description = try associatedValues.decode(VehicleDescription.self, forKey: .description)
            let engineType = try associatedValues.decode(EngineType.self, forKey: .engineType)
            let drivetrain = try associatedValues.decode(DrivetrainType.self, forKey: .drivetrain)
            self = .car(description: description, engineType: engineType, drivetrain: drivetrain)
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
        }
    }

}
