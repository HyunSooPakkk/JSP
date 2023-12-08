package com.java.www.service;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.StoreAttachDao;
import com.java.www.dao.StoreInfoDao;
import com.java.www.dto.StoreAttachDto;
import com.java.www.dto.StoreInfoDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class StoreRegistService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession httpSession = request.getSession();
		String id = httpSession.getAttribute("session_id").toString();
		StoreInfoDao sdao = new StoreInfoDao();
		String fdirectory = "C:/upload";
		//ArrayList<String> bfile= new ArrayList<String>();
		HashMap<String,String> bfile = new HashMap<String, String>();
		int size= 30 *1024 * 1024;
		
		try {
			MultipartRequest mr = new MultipartRequest(request, fdirectory, size,"utf-8", new DefaultFileRenamePolicy());
			/*StoreInfo*/
			String storename = mr.getParameter("storename") ;
			String phone = mr.getParameter("phone") ;
			String address = mr.getParameter("address") ;
			String menu = mr.getParameter("menu") ;
			String openTime = mr.getParameter("openTime") ;
			String content = mr.getParameter("content") ;
			int category = Integer.parseInt(mr.getParameter("catetoryId"));
			String webaddr = mr.getParameter("site");
			String opendate = mr.getParameter("opendate");
			String tags = mr.getParameter("tags"); // keywordId
	
			
			System.out.println(storename+" "+phone+" "+address+" "+menu+" "+openTime+" "+content+" "+category+" "+webaddr+" "+opendate+" "+tags);
	
			
			/*Store_File*/
			Enumeration<String> filename = mr.getFileNames();

			while(filename.hasMoreElements()) {
				String f = filename.nextElement().toString();
				bfile.put(f, mr.getFilesystemName(f));
				
				System.out.println("filename.nextElement().toString() : "+ f);

			}
			if(bfile.get("menuFile") == null)
			{
				bfile.replace("menuFile","");
			}
			System.out.println("StoreRegistService bfile.get(\"menuFile\") : "+ bfile.get("menuFile"));
			
			StoreInfoDto sdto = new StoreInfoDto(storename,id,category,phone,address,menu,openTime,content,webaddr,opendate,tags,bfile.get("menuFile"));
			
			int result = sdao.InsertStoreInfo(sdto);
			
			System.out.println("result : "+result);
					
			
			bfile.remove("menuFile");
			StoreAttachDao sadao = new StoreAttachDao();
		   for (Entry<String, String> entrySet : bfile.entrySet()) {           
		   
			   System.out.println(entrySet.getKey() + " : " + entrySet.getValue());
			   
			   int result2 = sadao.inputFiles(new StoreAttachDto(0,entrySet.getValue(),0,null));
			  
			   System.out.println("result2 : " + result2);
		    }

		
			
			/*-----------------   SetAttribute -----------------*/
//			request.setAttribute("result", result);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
