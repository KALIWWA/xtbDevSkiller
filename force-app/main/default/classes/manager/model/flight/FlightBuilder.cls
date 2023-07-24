public class FlightBuilder {

	private String flightNo;
	private String origin;
	private String destination;
	private Map<Grade, Set<Seat>> seats = new Map<Grade, Set<Seat>>();

	public static FlightBuilder aFlight() {
		return new FlightBuilder();
	}

	public FlightBuilder withFlightNo(String flightNo) {
		this.flightNo = flightNo;
		return this;
	}

	public FlightBuilder withOrigin(String origin) {
		this.origin = origin;
		return this;
	}

	public FlightBuilder withDestination(String destination) {
		this.destination = destination;
		return this;
	}

	public FlightBuilder addSeats(Grade grade) {
		Set<Seat> seatsForGrade = new Set<Seat>();
		seatsForGrade.add(new Seat('1A'));
		seatsForGrade.add(new Seat('1B'));
		seats.put(grade, seatsForGrade);
		return this;
	}

	public Flight createFlight() {
		return new Flight(flightNo, origin, destination, seats);
	}
}