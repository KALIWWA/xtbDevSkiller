public class FlightManager {

	private Set<Flight> flights = new Set<Flight>();

	public Boolean addNewFlight(Flight flight) {
		return flights.add(flight);
	}

	public Flight findFlight(String flightNo) {
		// TODO: Implement
		for (Flight flight : flights){
			if (flight.getFlightNo().equals(flightNo)) {
				return flight;
			}
		}
		return null;
	}

}
