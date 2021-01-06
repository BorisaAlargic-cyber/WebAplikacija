package beans;

public class ApartmentComments {
	private Long id;
	private String guestCommName;
	private Apartment apartmant;
	private String text;
	private Float rate;
	
	
	public ApartmentComments(Long id,String guestCommName, Apartment apartmant, String text, Float rate) {
		super();
		this.id=id;
		this.guestCommName = guestCommName;
		this.apartmant = apartmant;
		this.text = text;
		this.rate = rate;
	}


	public String getGuestCommName() {
		return guestCommName;
	}


	public void setGuestCommName(String guestCommName) {
		this.guestCommName = guestCommName;
	}


	public Apartment getApartmant() {
		return apartmant;
	}


	public void setApartmant(Apartment apartmant) {
		this.apartmant = apartmant;
	}


	public String getText() {
		return text;
	}


	public void setText(String text) {
		this.text = text;
	}


	public Float getRate() {
		return rate;
	}


	public void setRate(Float rate) {
		this.rate = rate;
	}


	@Override
	public String toString() {
		return "ApartmanComments [guestCommName=" + guestCommName + ", apartmant=" + apartmant + ", text=" + text
				+ ", rate=" + rate + "]";
	}
	
	
}
