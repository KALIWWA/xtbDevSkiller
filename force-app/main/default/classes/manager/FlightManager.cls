public class FlightManager {

	private Set<Flight> flights = new Set<Flight>();

	public Boolean addNewFlight(Flight flight) {
		return flights.add(flight);
	}

	public Flight findFlight(String flightNo) {
		return null; // TODO: Implement
	}

}
