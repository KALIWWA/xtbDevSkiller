public class Seat {

	public enum Status {
		AVAILABLE, RESERVED
	}
    
    @TestVisible
	private final String seatNumber;
    
    @TestVisible
	private Status seatStatus = Status.AVAILABLE;

	public Seat(String seatNumber) {
		this.seatNumber = seatNumber;
	}

	public String getNumber() {
		return seatNumber;
	}

	public Status getStatus() {
		return seatStatus;
	}

	public Boolean isAvailable() {
		return seatStatus == Status.AVAILABLE;
	}

	public void reserve() {
		seatStatus = Status.RESERVED;
	}

	public Boolean equals(Object obj) {
		if (this === obj) {
            return true;
        } else if (obj == null || !(obj instanceof Seat)) {
            return false;  
        }
        
		Seat that = (Seat) obj;
		return this.seatNumber == that.seatNumber &&
				this.seatStatus == that.seatStatus;
	}

	public Integer hashCode() {
		return seatNumber.hashCode() + seatStatus.hashCode();
	}

	public override String toString() {
		return 'Seat{' +
				'seatNumber=\'' + seatNumber + '\'' +
				', seatStatus=' + seatStatus +
				'}';
	}
}
