import XCTest

final class CMTests: XCTestCase {
    
    // Test AlertManager
    func testFetchAlerts() async throws {
        let alertManager = AlertManager()
        
        do {
            let alerts = try await alertManager.getAlerts()
            XCTAssertGreaterThan(alerts.entity.count, 0, "Expected at least one alert in the response")
        } catch {
            XCTFail("Error fetching alerts: \(error)")
        }
    }
    
    // Test FacilitiesStoresManager (Assuming it handles ENCM)
    func testFetchAllENCMFacilities() async throws {
        let facilitiesStoresManager = FacilitiesStoresManager()
        
        do {
            let facilities = try await facilitiesStoresManager.getAllENCMFacilities()
            XCTAssertGreaterThan(facilities.count, 0, "Expected at least one facility in the response")
        } catch {
            XCTFail("Error fetching ENCM facilities: \(error)")
        }
    }
    
    func testFetchENCMFacility() async throws {
        let facilitiesStoresManager = FacilitiesStoresManager()
        let encmId = "8400000000000001" // Example ENCM facility ID
        
        do {
            let facility = try await facilitiesStoresManager.getENCMFacility(encmId: encmId)
            XCTAssertNotNil(facility, "Expected a valid facility object")
        } catch {
            XCTFail("Error fetching ENCM facility: \(error)")
        }
    }
    
    // Test LineManager
    func testFetchLines() async throws {
        let lineManager = LineManager()
        
        do {
            let lines = try await lineManager.getLines()
            XCTAssertGreaterThan(lines.count, 0, "Expected at least one line in the response")
        } catch {
            XCTFail("Error fetching lines: \(error)")
        }
    }

    func testFetchLine() async throws {
        let lineManager = LineManager()
        let lineId = "1001" // Example line ID
        
        do {
            let line = try await lineManager.getLine(lineId: lineId)
            XCTAssertNotNil(line, "Expected a valid line object")
        } catch {
            XCTFail("Error fetching line: \(error)")
        }
    }

    // Test MunicipalityManager
    func testFetchMunicipalities() async throws {
        let municipalityManager = MunicipalityManager()
        
        do {
            let municipalities = try await municipalityManager.getMunicipalities()
            XCTAssertGreaterThan(municipalities.count, 0, "Expected at least one municipality in the response")
        } catch {
            XCTFail("Error fetching municipalities: \(error)")
        }
    }

    func testFetchMunicipality() async throws {
        let municipalityManager = MunicipalityManager()
        let municipalityId = "1502" // Example municipality ID
        
        do {
            let municipality = try await municipalityManager.getMunicipality(municipalityId: municipalityId)
            XCTAssertNotNil(municipality, "Expected a valid municipality object")
        } catch {
            XCTFail("Error fetching municipality: \(error)")
        }
    }
    
    // Test PatternManager
    func testFetchPattern() async throws {
        let patternManager = PatternManager()
        let patternId = "2708_0_1" // Example pattern ID
        
        do {
            let pattern = try await patternManager.getPattern(patternId: patternId)
            XCTAssertNotNil(pattern, "Expected a valid pattern object")
        } catch {
            XCTFail("Error fetching pattern: \(error)")
        }
    }
    
    // Test RealTimeManager
    func testFetchRealTimeArrivals() async throws {
        let realTimeManager = RealTimeManager()
        let stopId = "010001" // Example stop ID
        
        do {
            let arrivals = try await realTimeManager.getRealTimeArrivals(forStopId: stopId)
            XCTAssertGreaterThan(arrivals.count, 0, "Expected at least one real-time arrival")
        } catch {
            XCTFail("Error fetching real-time arrivals: \(error)")
        }
    }

    // Test RouteManager
    func testFetchRoutes() async throws {
        let routeManager = RouteManager()
        
        do {
            let routes = try await routeManager.getRoutes()
            XCTAssertGreaterThan(routes.count, 0, "Expected at least one route in the response")
        } catch {
            XCTFail("Error fetching routes: \(error)")
        }
    }

    func testFetchRoute() async throws {
        let routeManager = RouteManager()
        let routeId = "4002_0" // Example route ID
        
        do {
            let route = try await routeManager.getRoute(routeId: routeId)
            XCTAssertNotNil(route, "Expected a valid route object")
        } catch {
            XCTFail("Error fetching route: \(error)")
        }
    }

    // Test SchoolManager
    func testFetchAllSchools() async throws {
        let schoolManager = SchoolManager()
        
        do {
            let schools = try await schoolManager.getAllSchools()
            XCTAssertGreaterThan(schools.count, 0, "Expected at least one school in the response")
        } catch {
            XCTFail("Error fetching schools: \(error)")
        }
    }
    
    func testFetchSchool() async throws {
        let schoolManager = SchoolManager()
        let schoolId = "200098" // Example school ID
        
        do {
            let school = try await schoolManager.getSchool(schoolId: schoolId)
            XCTAssertNotNil(school, "Expected a valid school object")
        } catch {
            XCTFail("Error fetching school: \(error)")
        }
    }
    
    // Test StopManager
    func testFetchStops() async throws {
        let stopManager = StopManager()
        
        do {
            let stops = try await stopManager.getStops()
            XCTAssertGreaterThan(stops.count, 0, "Expected at least one stop in the response")
        } catch {
            XCTFail("Error fetching stops: \(error)")
        }
    }

    // Test VehicleManager
    func testFetchVehicles() async throws {
        let vehicleManager = VehicleManager()
        
        do {
            let vehicles = try await vehicleManager.getVehicles()
            XCTAssertGreaterThan(vehicles.count, 0, "Expected at least one vehicle in the response")
        } catch {
            XCTFail("Error fetching vehicles: \(error)")
        }
    }
}
