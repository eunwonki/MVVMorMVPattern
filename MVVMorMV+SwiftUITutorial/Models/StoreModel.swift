// Agregation Root Model

import Foundation

@MainActor // function should be called in main thread
class StoreModel: ObservableObject {
    let webservice: WebService
    @Published var products: [Product] = []
    
    init(webservice: WebService) {
        self.webservice = webservice
    }
    
    func populateProducts() async throws {
        products = try await webservice.getProducts()
    }
}
