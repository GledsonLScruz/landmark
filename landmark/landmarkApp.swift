//
//
//  Created by Gledson Cruz on 07/07/25.
//

import SwiftUI

@main
struct kardlyApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
    
        
}
