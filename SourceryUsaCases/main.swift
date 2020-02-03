
import Foundation

enum Vehicle: AutoCodable, AutoEnumProperties {
    case car(description: VehicleData, engineType: EngineType, drivetrain: DrivetrainType)
    case rocket(engines: Int)
}

struct VehicleData: Codable {
    let manufacturer: String
    let model: String
    let year: Int
}

struct Garage: Codable {
    let vehicles: [Vehicle]
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
    let garage = Garage(vehicles: [
        .car(description: .init(manufacturer: "Audi", model: "A3", year: 2002),
             engineType: .reciprocating(fuelType: [.petrol(quality: [.premium95])],
                                        architecture: .verticalInline,
                                        ignition: .compression,
                                        cylinders: 4,
                                        airIntake: [.turbocharged],
                                        stroke: .three),
             drivetrain: .AWD(awdType: .auto)),
        .car(description: .init(manufacturer: "Mazda", model: "RX-8", year: 2005),
             engineType: .rotary(airIntake: []),
             drivetrain: .RWD)
    ])
    let garage2 = Garage.from(jsonString: garage.asJSON)
    let audi = garage.vehicles[0]
    let mazda = garage.vehicles[1]
}




func testDeezerAPI() {

    let apiManager = APIManager(baseUrl: URL(string: "https://api.deezer.com")!, apiKey: "")

    let playlistsRequest = GetPlaylistsRequest(userId: 27147811)

    apiManager.send(request: playlistsRequest) { (result) in
        switch result {
        case .failure(let error):
            print("Failed to get playlists: \(error.localizedDescription)")
        case .success(let response):

            for playlist in response.data {
                print(playlist.title, playlist.creator?.name ?? "")
            }
        }
    }
}
testEnums()
dispatchMain()
