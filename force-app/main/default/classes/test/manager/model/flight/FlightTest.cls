@IsTest
private class FlightTest {
    @IsTest
    private static void shouldReserveAvailableSeat() {
        // given
        Flight testFlight = FlightBuilder.aFlight().addSeats(Grade.ECONOMY).createFlight();
        
        // when
        Seat reservedSeat = testFlight.reserveSeat(Grade.ECONOMY);
        
        // then
        System.assertEquals(Seat.Status.RESERVED, reservedSeat.seatStatus, 'Seat should be reserved');
    }
    
    @IsTest
    private static void shouldNotAllowToReserveSeatInNonExistingGrade() {        
        // given
        Flight testFlight = FlightBuilder.aFlight().addSeats(Grade.ECONOMY).createFlight();
            
        // when 
        Exception expectedException;
        try {
            testFlight.reserveSeat(Grade.FIRST);
        } catch (Exception e) {
            expectedException = e;
        }
        
        // then
        System.assertNotEquals(null, expectedException, 'Exception should be thrown.');
        System.assert(expectedException instanceof NoSeatAvailableException, 'Exception should be of type ' + NoSeatAvailableException.class.getName());
    }
    @IsTest
    private static void shouldNotReserveAlreadyReservedSeat() {        
        // given
        Flight testFlight = FlightBuilder.aFlight().addSeats(Grade.ECONOMY).createFlight();
        testFlight.reserveSeat(Grade.ECONOMY);
        testFlight.reserveSeat(Grade.ECONOMY);
        
        // when 
        Exception expectedException;
        try {
            testFlight.reserveSeat(Grade.ECONOMY);
        } catch (Exception e) {
            expectedException = e;
        }
        
        // then
        System.assertNotEquals(null, expectedException, 'Exception should be thrown.');
        System.assert(expectedException instanceof NoSeatAvailableException, 'Exception should be of type ' + NoSeatAvailableException.class.getName());
    }
}
