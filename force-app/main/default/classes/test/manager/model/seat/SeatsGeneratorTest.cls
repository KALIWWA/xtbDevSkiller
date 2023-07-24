@IsTest
private class SeatsGeneratorTest {
    @IsTest
    private static void basicTest() {
        // given
        SeatsGenerator generator = new SeatsGenerator();
        
        // when
        Set<Seat> seats = generator.createSeats(2, 4, 1);
        
        // then
        Set<Seat> expectedSeats = new Set<Seat> {
            new Seat('1A'), new Seat('1B'), new Seat('1C'), new Seat('1D'),
            new Seat('2A'), new Seat('2B'), new Seat('2C'), new Seat('2D')
        };
        System.assertEquals(expectedSeats, seats, 'Created seats are not the same as expected.');
    }
    
    @IsTest
    private static void shouldGenerateSeatsWithProperNumbers() {        
        // given
        SeatsGenerator generator = new SeatsGenerator();
        
        // when
        Set<Seat> seats = generator.createSeats(2, 2, 4);
        
        // then
        Set<Seat> expectedSeats = new Set<Seat> {
            new Seat('4A'), new Seat('4B'), new Seat('5A'), new Seat('5B')
        };
        System.assertEquals(expectedSeats, seats, 'Created seats are not the same as expected.');
    }
}
