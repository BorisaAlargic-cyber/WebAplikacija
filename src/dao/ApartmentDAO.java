package dao;

import java.awt.Image;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import beans.Apartment;
import beans.ApartmentComments;
import beans.ApartmentContent;
import beans.ApartmentType;
import beans.Location;
import beans.Reservation;
import beans.Status;
import beans.User;

public class ApartmentDAO {
	
	private Map<Long, Apartment> apartments = new HashMap<>();
	private String contextPath = "";
	
	
	public ApartmentDAO() {
		
	}
	
	public Apartment add(Apartment apartment) {
		
		Long id = nextId();
		
		apartment.setId(id);
		apartments.put(id, apartment);
		
		saveApartments();
		
		return apartment;
	}
	
	public ApartmentDAO(String contextPath) {
		this.contextPath = contextPath;
		loadApartmentss(contextPath);
	}
	
	public Collection<Apartment> findAll() {
		return apartments.values();
	}
	
	public Apartment findByID(Integer id)
	{
		return apartments.get(id);
	}

	private void loadApartmentss(String contextPath) {
		BufferedReader in = null;
		try {
			File file = new File(contextPath + "/apartments.txt");
			in = new BufferedReader(new FileReader(file));
			String line;
			StringTokenizer st;
			while ((line = in.readLine()) != null) {
				line = line.trim();
				if (line.equals("") || line.indexOf('#') == 0)
					continue;
				st = new StringTokenizer(line, ";");
				while (st.hasMoreTokens()) {
					Long id = Long.valueOf(st.nextToken().trim());
					
					ApartmentType type = ApartmentType.valueOf(st.nextToken().trim());
					
					Integer roomsCount = Integer.valueOf(st.nextToken().trim());
					Integer guestCount = Integer.valueOf(st.nextToken().trim());
					
					Long locationId = Long.valueOf(st.nextToken().trim());
					
					String userEmail = st.nextToken().trim();
				
					Float pricePerNight = Float.valueOf(st.nextToken().trim());
					LocalTime checkInTime = LocalTime.parse(st.nextToken().trim());
					LocalTime checkOutTime = LocalTime.parse(st.nextToken().trim());
					
					Status status = Status.valueOf(st.nextToken().trim());
					
					LocationDAO locationDAO = new LocationDAO(this.contextPath);
					UserDAO userDAO = new UserDAO(this.contextPath);
					
					Location location = locationDAO.find(locationId);
					User user = userDAO.find(userEmail);
					
					Apartment apartment = new Apartment();
					
					apartment.setId(id);
					apartment.setType(type);
					apartment.setRoomsCount(roomsCount);
					apartment.setGuestCount(guestCount);
					apartment.setLocation(location);
					apartment.setPricePerNight(pricePerNight);
					apartment.setCheckInTime(checkInTime);
					apartment.setCheckOutTime(checkOutTime);
					apartment.setStatus(status);
					
					apartments.put(id, apartment);
				}
				
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (in != null) {
				try {
					in.close();
				}
				catch (Exception e) { }
			}
		}
	}
	private void saveApartments()
	{
		try {
			FileWriter writer = new FileWriter(contextPath + "/apartments.txt");
			System.out.println(contextPath + "/apartments.txt");
			
			for(Apartment ap : apartments.values())
			{
				String line = "";
				line+=ap.getId() + ";";
				line+=ap.getType() + ";";
				line+=ap.getRoomsCount() + ";";
				line+=ap.getGuestCount() + ";";
				line+=ap.getLocation().getId() + ";";
				line+=ap.getHost().getEmail() + ";";
				line+=ap.getPricePerNight() + ";";
				line+=ap.getCheckInTime() + ";";
				line+=ap.getCheckOutTime() + ";";
				line+=ap.getStatus() + ";";
				System.out.println(line);
				writer.write(line);
			}
			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
private Long nextId() {
		
		Long id = 1L;
		
		for(Long currentId : apartments.keySet())
		{
			if(currentId > id) {
				id = currentId;
			}
		}
		
		return id + 1;
	}
}
