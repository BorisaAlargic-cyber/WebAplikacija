package dao;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDate;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import beans.Apartment;
import beans.Gender;
import beans.Reservation;
import beans.Role;
import beans.StatusOfReservation;
import beans.User;

public class ReservationDAO {
private Map<Long, Reservation> reservation = new HashMap<>();
private String contextPath = "";
	
	
	public ReservationDAO() {
		
	}
	
	
	public ReservationDAO(String contextPath) {
		this.contextPath = contextPath;
		loadReservations(contextPath);
	}
	

	public Collection<Reservation> findAll() {
		return reservation.values();
	}
	
	
	private void loadReservations(String contextPath) {
		BufferedReader in = null;
		try {
			File file = new File(contextPath + "/reservation.txt");
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
					Apartment apartment = new Apartment();
					//TODO
					LocalDate firstDayOfReservation;
					Integer numberOfNIghts = Integer.valueOf(st.nextToken().trim());
					Float finalPrice  = Float.valueOf(st.nextToken().trim());
					String messageAfterReservation = st.nextToken().trim();
					User guest = new User();
					StatusOfReservation status = StatusOfReservation.Accepted;
					//reservation.put(id, new Reservation(apartment, guest, status, numberOfNIghts, finalPrice, messageAfterReservation,firstDayOfReservation,id));
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
	private void saveReservation() {
		try {
		      FileWriter writer = new FileWriter(contextPath + "/reservationo.txt");
		      System.out.println(contextPath + "/reservation.txt");
		      
		      for (Reservation r : reservation.values()) {
		    	  String line = "";
		    	  line += r.getId() + ";";
		    	  line += r.getApartment() + ";";
		    	  line += r.getFirstDayOfReservation() + ";";
		    	  line += r.getNumberOfNIghts() + ";";
		    	  line += r.getFinalPrice()  + ";";
		    	  line += r.getGuest() + ";";
		    	  line += r.getStatus()+ "\n";
		    	  System.out.println(line);
		    	  writer.write(line);
		      }
		      
		      writer.close();
		    } catch (IOException e) {
		      System.out.println("An error occurred.");
		      e.printStackTrace();
		    }
	}
}
