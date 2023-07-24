public class Section {

	private final Set<Seat> seats;

	public Section(Set<Seat> seats) {
		this.seats = seats;
	}

	public Seat reserveSeat() {
		Seat availableSeat;
        
        for (Seat sectionSeat : seats) {
            if (sectionSeat.isAvailable()) {
                availableSeat = sectionSeat;
                break;
            }
        }
        
        if (availableSeat == null) {
            throw new NoSeatAvailableException();
        }
		
        availableSeat.reserve();
		return availableSeat;
	}

	public Long countAvailableSeats() {
        Long availableSeatsCount = 0;
        for (Seat sectionSeat : seats) {
            if (sectionSeat.isAvailable()) {
                availableSeatsCount++;
            }
        }
		return availableSeatsCount;
	}
}
