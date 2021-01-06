package dao;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import beans.Apartment;
import beans.ApartmentComments;

import beans.ApartmentContent;

public class ApartmentCommentsDAO {
	private Map<Long, ApartmentComments> aComments = new HashMap<>();
	private String contextPath = "";
	
	public ApartmentCommentsDAO() {
		
	}
	
	public ApartmentCommentsDAO(String contextPath) {
		this.contextPath = contextPath;
		loadApartmentComments(contextPath);
	}
	
	public Collection<ApartmentComments> findAll() {
		return aComments.values();
	}
	
	

	private void loadApartmentComments(String contextPath) {
		BufferedReader in = null;
		
		ApartmentDAO apartmentDAO = new ApartmentDAO(contextPath);
		
		try {
			File file = new File(contextPath + "/apartmentComments.txt");
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
					String guestCommName = st.nextToken().trim();
					Integer apartmentID = Integer.valueOf(st.nextToken().trim());
					String text = st.nextToken().trim();
					Float rate = Float.valueOf(st.nextToken().trim());
					aComments.put(id, new ApartmentComments(id,guestCommName,apartmentDAO.findByID(apartmentID),text,rate ));
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
	private void saveApartmentComments()
	{
		try {
			FileWriter writer = new FileWriter(contextPath + "/apartmentComments.txt");
			System.out.println(contextPath + "/apartmentComments.txt");
			
			for(ApartmentComments aC : aComments.values())
			{
				String line = "";
				line+=aC.getApartmant().getId() + ";";
				line+=aC.getRate() + ";";
				line+=aC.getText() + ";";
				line+=aC.getGuestCommName() + "\n";
				System.out.println(line);
				writer.write(line);
			}
			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
