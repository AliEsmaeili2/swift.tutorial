
import Foundation
import SwiftUI

struct Video: Identifiable {
    
    var id = UUID()
    var imageName: String
    var title:     String
    var uploadDate: String
    
}

struct VideoList {
    
    static let topTwelve = [
        
    Video(imageName: "1", title: "Benz",     uploadDate: "Friday-Jan-19"),
    Video(imageName: "2", title: "BMW",    uploadDate: "Friday-Jan-20"),
    Video(imageName: "3", title: "A class",    uploadDate: "Friday-Jan-21"),
    Video(imageName: "4", title: "G class",   uploadDate: "Friday-Jan-22"),
    Video(imageName: "5", title: "Lambor",   uploadDate: "Friday-Jan-23"),
    Video(imageName: "6", title: "Audi",    uploadDate: "Friday-Jan-24"),
    Video(imageName: "7", title: "Dodge",     uploadDate: "Friday-Jan-25"),
    Video(imageName: "8", title: "Rang",  uploadDate: "Friday-Jan-26"),
    
    ]





}
