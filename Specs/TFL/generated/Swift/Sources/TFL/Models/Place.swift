//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Place: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** A bag of additional key/value pairs with extra information about this place. */
    public var additionalProperties: [AdditionalProperties]?

    public var children: [Place]?

    public var childrenUrls: [String]?

    /** A human readable name. */
    public var commonName: String?

    /** The distance of the place from its search point, if this is the result
            of a geographical search, otherwise zero. */
    public var distance: Double?

    /** A unique identifier. */
    public var id: String?

    /** WGS84 latitude of the location. */
    public var lat: Double?

    /** WGS84 longitude of the location. */
    public var lon: Double?

    /** The type of Place. See /Place/Meta/placeTypes for possible values. */
    public var placeType: String?

    /** The unique location of this resource. */
    public var url: String?

    public init(additionalProperties: [AdditionalProperties]? = nil, children: [Place]? = nil, childrenUrls: [String]? = nil, commonName: String? = nil, distance: Double? = nil, id: String? = nil, lat: Double? = nil, lon: Double? = nil, placeType: String? = nil, url: String? = nil) {
        self.additionalProperties = additionalProperties
        self.children = children
        self.childrenUrls = childrenUrls
        self.commonName = commonName
        self.distance = distance
        self.id = id
        self.lat = lat
        self.lon = lon
        self.placeType = placeType
        self.url = url
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        additionalProperties = jsonDictionary.json(atKeyPath: "additionalProperties")
        children = jsonDictionary.json(atKeyPath: "children")
        childrenUrls = jsonDictionary.json(atKeyPath: "childrenUrls")
        commonName = jsonDictionary.json(atKeyPath: "commonName")
        distance = jsonDictionary.json(atKeyPath: "distance")
        id = jsonDictionary.json(atKeyPath: "id")
        lat = jsonDictionary.json(atKeyPath: "lat")
        lon = jsonDictionary.json(atKeyPath: "lon")
        placeType = jsonDictionary.json(atKeyPath: "placeType")
        url = jsonDictionary.json(atKeyPath: "url")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let additionalProperties = additionalProperties?.encode() {
            dictionary["additionalProperties"] = additionalProperties
        }
        if let children = children?.encode() {
            dictionary["children"] = children
        }
        if let childrenUrls = childrenUrls {
            dictionary["childrenUrls"] = childrenUrls
        }
        if let commonName = commonName {
            dictionary["commonName"] = commonName
        }
        if let distance = distance {
            dictionary["distance"] = distance
        }
        if let id = id {
            dictionary["id"] = id
        }
        if let lat = lat {
            dictionary["lat"] = lat
        }
        if let lon = lon {
            dictionary["lon"] = lon
        }
        if let placeType = placeType {
            dictionary["placeType"] = placeType
        }
        if let url = url {
            dictionary["url"] = url
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
