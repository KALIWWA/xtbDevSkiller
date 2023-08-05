public class SeatsGenerator {
	public Set<Seat> createSeats(Integer rows, Integer seatsInRow, Integer firstRowNumber) {
		Set<Seat> seatSet = new Set<Seat>();
		List<String> seatInRowLetterList = new List<String>{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K'};

		for (Integer row = firstRowNumber; row < firstRowNumber + rows; row++) {
			for (Integer seatNumber = 1; seatNumber <= seatsInRow; seatNumber++) {
				String seatId = row + seatInRowLetterList[seatNumber - 1];
				seatSet.add(new Seat(seatId));
			}
		}

		return seatSet; // TODO: Implement
	}
}