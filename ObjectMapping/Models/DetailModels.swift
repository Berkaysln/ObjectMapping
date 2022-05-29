// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - WelcomeElement
struct WelcomeElement: Codable, Hashable {
    let id: Int
    let customerID: String
    let employeeID: Int
    let orderDate, requiredDate, shippedDate: String
    let shipVia: Int
    let freight: Double
    let shipName: String
    let shipAddress: ShipAddress
    let details: [Detail]

    enum CodingKeys: String, CodingKey {
        case id
        case customerID = "customerId"
        case employeeID = "employeeId"
        case orderDate, requiredDate, shippedDate, shipVia, freight, shipName, shipAddress, details
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - Detail
struct Detail: Codable, Hashable {
    let productID: Int
    let unitPrice: Double
    let quantity: Int
    let discount: Double

    enum CodingKeys: String, CodingKey {
        case productID = "productId"
        case unitPrice, quantity, discount
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - ShipAddress
struct ShipAddress: Codable, Hashable {
    let street, city: String
    let region: Region
    let postalCode: PostalCode
    let country: Country
}

enum Country: String, Codable, Hashable {
    case argentina = "Argentina"
    case austria = "Austria"
    case belgium = "Belgium"
    case brazil = "Brazil"
    case canada = "Canada"
    case denmark = "Denmark"
    case finland = "Finland"
    case france = "France"
    case germany = "Germany"
    case ireland = "Ireland"
    case italy = "Italy"
    case mexico = "Mexico"
    case norway = "Norway"
    case poland = "Poland"
    case portugal = "Portugal"
    case spain = "Spain"
    case sweden = "Sweden"
    case switzerland = "Switzerland"
    case uk = "UK"
    case usa = "USA"
    case venezuela = "Venezuela"
}

enum PostalCode: Codable, Hashable {
    case integer(Int)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(PostalCode.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for PostalCode"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

enum Region: String, Codable, Hashable {
    case ak = "AK"
    case bc = "BC"
    case ca = "CA"
    case coCork = "Co. Cork"
    case df = "DF"
    case essex = "Essex"
    case id = "Id"
    case isleOfWight = "Isle of Wight"
    case lara = "Lara"
    case mt = "MT"
    case nm = "NM"
    case nuevaEsparta = "Nueva Esparta"
    case null = "NULL"
    case or = "OR"
    case québec = "Québec"
    case rj = "RJ"
    case sp = "SP"
    case táchira = "Táchira"
    case wa = "WA"
    case wy = "WY"
}

typealias Welcome = [WelcomeElement]
