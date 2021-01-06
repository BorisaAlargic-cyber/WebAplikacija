package beans;

import java.awt.Image;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class Apartment {

	private Long id;
	private ApartmentType type;
	private Integer roomsCount;
	private Integer guestCount;
	private Location location;
	private List<LocalDate> availableDates;
	private Map<LocalDate, Boolean> reservedDates;
	private User host;
	private List<ApartmentComments> comments;
	private List<Image> images;
	private Float pricePerNight;
	private LocalTime checkInTime;
	private LocalTime checkOutTime;
	private Status status;
	private List<ApartmentContent> amenities;
	private List<Reservation> reservation;
	
	
	
	public Long getId() {
		return id;
	}

	
	public Apartment(Long id, ApartmentType type, Integer roomsCount, Integer guestCount, Location location,
			List<LocalDate> availableDates, Map<LocalDate, Boolean> reservedDates, User host, List<ApartmentComments> comments,
			List<Image> images, Float pricePerNight, LocalTime checkInTime, LocalTime checkOutTime, Status status,
			List<ApartmentContent> amenities, List<Reservation> reservation) {
		super();
		this.id = id;
		this.type = type;
		this.roomsCount = roomsCount;
		this.guestCount = guestCount;
		this.location = location;
		this.availableDates = availableDates;
		this.reservedDates = reservedDates;
		this.host = host;
		this.comments = comments;
		this.images = images;
		this.pricePerNight = pricePerNight;
		this.checkInTime = checkInTime;
		this.checkOutTime = checkOutTime;
		this.status = status;
		this.amenities = amenities;
		this.reservation = reservation;
	}
	
	public Apartment() {
		// TODO Auto-generated constructor stub
	}
	public void setId(Long id) {
		this.id = id;
	}
	public ApartmentType getType() {
		return type;
	}
	public void setType(ApartmentType type) {
		this.type = type;
	}
	public Integer getRoomsCount() {
		return roomsCount;
	}
	public void setRoomsCount(Integer roomsCount) {
		this.roomsCount = roomsCount;
	}
	public Integer getGuestCount() {
		return guestCount;
	}
	public void setGuestCount(Integer guestCount) {
		this.guestCount = guestCount;
	}
	public Location getLocation() {
		return location;
	}
	public void setLocation(Location location) {
		this.location = location;
	}
	public List<LocalDate> getAvailableDates() {
		return availableDates;
	}
	public void setAvailableDates(List<LocalDate> availableDates) {
		this.availableDates = availableDates;
	}
	public Map<LocalDate, Boolean> getReservedDates() {
		return reservedDates;
	}
	public void setReservedDates(Map<LocalDate, Boolean> reservedDates) {
		this.reservedDates = reservedDates;
	}
	public User getHost() {
		return host;
	}
	public void setHost(User host) {
		this.host = host;
	}
	public List<Image> getImages() {
		return images;
	}
	public void setImages(List<Image> images) {
		this.images = images;
	}
	public Float getPricePerNight() {
		return pricePerNight;
	}
	public void setPricePerNight(Float pricePerNight) {
		this.pricePerNight = pricePerNight;
	}
	public LocalTime getCheckInTime() {
		return checkInTime;
	}
	public void setCheckInTime(LocalTime checkInTime) {
		this.checkInTime = checkInTime;
	}
	public LocalTime getCheckOutTime() {
		return checkOutTime;
	}
	public void setCheckOutTime(LocalTime checkOutTime) {
		this.checkOutTime = checkOutTime;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	
	public List<ApartmentComments> getComments() {
		return comments;
	}
	public void setComments(List<ApartmentComments> comments) {
		this.comments = comments;
	}
	public List<ApartmentContent> getAmenities() {
		return amenities;
	}
	public void setAmenities(List<ApartmentContent> amenities) {
		this.amenities = amenities;
	}
	public List<Reservation> getReservation() {
		return reservation;
	}
	public void setReservation(List<Reservation> reservation) {
		this.reservation = reservation;
	}
	@Override
	public String toString() {
		return "Apartment [id=" + id + ", type=" + type + ", roomsCount=" + roomsCount + ", guestCount=" + guestCount
				+ ", location=" + location + ", availableDates=" + availableDates + ", reservedDates=" + reservedDates
				+ ", host=" + host + ", comments=" + comments + ", images=" + images + ", pricePerNight="
				+ pricePerNight + ", checkInTime=" + checkInTime + ", checkOutTime=" + checkOutTime + ", status="
				+ status + ", amenities=" + amenities + ", reservation=" + reservation + "]";
	}
	
	
	
}
