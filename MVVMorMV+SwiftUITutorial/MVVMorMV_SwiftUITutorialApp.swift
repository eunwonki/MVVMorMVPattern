import SwiftUI

@main
struct MVVM_SwiftUITutorialApp: App {
    @StateObject private var storeModel = StoreModel(webservice: WebService())

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(storeModel)
        }
    }
}
