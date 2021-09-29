package hostelfinder.entites;

public class Booking {
	private String checkin;
	private String checkout;
	private String roomtype;
	private int guests;
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	public int getGuests() {
		return guests;
	}
	public void setGuests(int guests) {
		this.guests = guests;
	}
	@Override
	public String toString() {
		return "Booking [checkin=" + checkin + ", checkout=" + checkout + ", roomtype=" + roomtype + ", guests="
				+ guests + "]";
	}
	
	

}
