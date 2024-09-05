import XCTest
@testable import CM

final class VehicleManagerTests: XCTestCase {

    func testFetchVehicles() async throws {
        let manager = VehicleManager()
        
        do {
            let vehicles = try await manager.getVehicles()
            XCTAssertGreaterThan(vehicles.count, 0, "Expected at least one vehicle in the response")
        } catch {
            XCTFail("Error fetching vehicles: \(error)")
        }
    }
}
