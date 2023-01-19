
import SwiftUI

struct ContentView: View {
    
    var videos: [Video] = []
    var body: some View {
        
        NavigationView {
            
            List(videos) { video in
                
                Image(video.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 90.0)
                    .cornerRadius(8)
                
                Spacer().frame(width: 16)
                
                VStack(alignment: .leading) {
                    
                    Text(video.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.75)
                    
                    Spacer().frame(height: 10)
                    
                    Text(video.uploadDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }.navigationBarTitle(Text("car's List"))
        }
        // .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView(videos: VideoList.topTwelve)
    }
}
