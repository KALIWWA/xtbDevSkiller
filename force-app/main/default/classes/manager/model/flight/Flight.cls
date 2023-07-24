public class Flight {

	private final String flightNo;

	private final String origin;

	private final String destination;

	private Map<Grade, Section> sectionMap = new Map<Grade, Section>();

	public Flight(String flightNo, String origin, String destination, Map<Grade, Set<Seat>> seats) {
		this.flightNo = flightNo;
		this.origin = origin;
		this.destination = destination;
        
        for (Grade flightGrade : seats.keySet()) {
            Set<Seat> seatsForGrade = seats.get(flightGrade);
            sectionMap.put(flightGrade, new Section(seatsForGrade));
        }
	}

	public String getFlightNo() {
		return flightNo;
	}

	public String getOrigin() {
		return origin;
	}

	public String getDestination() {
		return destination;
	}

	public Seat reserveSeat(Grade grade) {
		Section section = null; // TODO: Implement
		return section.reserveSeat();
	}

	public Long countAvailableSeats(Grade grade) {
		return sectionMap.get(grade).countAvailableSeats();
	}

}
