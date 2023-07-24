@IsTest
private class FlightManagerTest {
    @IsTest
    private static void shouldFindFlight() {
        // given
        FlightManager manager = new FlightManager();
        Flight testFlight = FlightBuilder.aFlight().withFlightNo('LO1533').createFlight();
            
        // when 
        manager.addNewFlight(testFlight);
        
        // then
        Flight foundFlight = manager.findFlight('LO1533');
        System.assertNotEquals(null, foundFlight, 'Searched flight should be found.');
    }
}
