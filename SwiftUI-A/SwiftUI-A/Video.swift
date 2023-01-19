
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
        
    Video(imageName: "1", title: "GTR",     uploadDate: "Friday-Jan-19"),
    Video(imageName: "2", title: "Benz",    uploadDate: "Friday-Jan-20"),
    Video(imageName: "3", title: "Ford",    uploadDate: "Friday-Jan-21"),
    Video(imageName: "4", title: "Qmars",   uploadDate: "Friday-Jan-22"),
    Video(imageName: "5", title: "Benz2",   uploadDate: "Friday-Jan-23"),
    Video(imageName: "6", title: "GTR2",    uploadDate: "Friday-Jan-24"),
    Video(imageName: "7", title: "BMW",     uploadDate: "Friday-Jan-25"),
    Video(imageName: "8", title: "Porche",  uploadDate: "Friday-Jan-26"),
    
    ]





}
