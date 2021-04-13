package Controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet(urlPatterns = {"/upload"})
public class UploadFile extends HttpServlet 
{
	private boolean isMultipart;
	   private String filePath;
	   private int maxFileSize = 2000000;
	   private int maxMemSize = 4 * 1024;
	   private File file ;
	   
	public void init( ){
	      // Get the file location where it would be stored.
	      filePath = "E:/SEM 5 PRACTICALS/WAD/Project/WebContent/img/property/"; 
	   }
	   
	   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException 
	   {
	   
	      // Check that we have a file upload request
	      isMultipart = ServletFileUpload.isMultipartContent(request);
	      response.setContentType("text/html");
	      java.io.PrintWriter out = response.getWriter( );
	   
	      if( !isMultipart ) 
	      {
	         out.println("<html>");
	         out.println("<head>");
	         out.println("<title>Servlet upload</title>");  
	         out.println("</head>");
	         out.println("<body>");
	         out.println("<p>No file uploaded</p>"); 
	         out.println("</body>");
	         out.println("</html>");
	         return;
	      }
	  
	      DiskFileItemFactory factory = new DiskFileItemFactory();
	   
	      // maximum size that will be stored in memory
	      factory.setSizeThreshold(maxMemSize);
	   
	      // Location to save data that is larger than maxMemSize.
	      factory.setRepository(new File("E:/SEM 5 PRACTICALS/WAD/Project/WebContent/img/property/"));

	      // Create a new file upload handler
	      ServletFileUpload upload = new ServletFileUpload(factory);
	   
	      // maximum file size to be uploaded.
	      upload.setSizeMax( maxFileSize );

	      try 
	      { 
	         // Parse the request to get file items.
	         List fileItems = upload.parseRequest(request);
		
	         // Process the uploaded file items
	         Iterator i = fileItems.iterator();

	         out.println("<html>");
	         out.println("<head>");
	         out.println("<title>Servlet upload</title>");  
	         out.println("</head>");
	         out.println("<body>");
	         try
     		 {
	         while ( i.hasNext () ) 
	         {
	            FileItem fi = (FileItem)i.next();
	            if ( !fi.isFormField () ) {
	               // Get the uploaded file parameters
	               String fieldName = fi.getFieldName();
	               String fileName = fi.getName();
	               String contentType = fi.getContentType();
	               boolean isInMemory = fi.isInMemory();
	               long sizeInBytes = fi.getSize();
	               
	               Path path = Paths.get(fileName);
	               Path filename = path.getFileName();
	            
	               // Write the file
	               if( fileName.lastIndexOf("\\") >= 0 ) 
	               {
	                  file = new File( filePath + fileName.substring( fileName.lastIndexOf("\\")));
	               } 
	               else 
	               {
	                  file = new File( filePath + fileName.substring(fileName.lastIndexOf("\\")+1));
	               }
	               fi.write(file);
	               String imagename = filename.toString();
	               
	               HttpSession session = request.getSession();
	               session.setAttribute("imagename", imagename);
	               
	               out.println("Uploaded Filename: " + fileName + "<br>");
	               String url = "jdbc:mysql://localhost:3307/project",
	       				username = "root", 
	       				password = "mysql";
	               
	            	    Cookie c[] = request.getCookies();
	       				String user = c[0].getValue();
	       				String pass = c[1].getValue();
	       				System.out.println(user);
	            	   Class.forName("com.mysql.jdbc.Driver"); // Defining JDBC Driver
	       			   Connection conn = DriverManager.getConnection(url, username, password);
	       			   
	       			   String insert = "insert into images(username, imagename) values(?, ?)";
	    			
	       			   PreparedStatement ps = conn.prepareStatement(insert);
	       			   ps.setString(1, user);
	       			   ps.setString(2, imagename);
	       			   ps.executeUpdate();
	       			   conn.close();
	       			   
	       			   RequestDispatcher rd = request.getRequestDispatcher("seller.jsp");
		               rd.forward(request, response);
	       		   
	            }
	            
	         }
     		}
             catch (Exception e) 
             {
          	   System.out.println(e.getMessage());
             }
	         out.println("</body>");
	         out.println("</html>");
	         } catch(Exception ex) {
	            System.out.println(ex);
	         }
	      }
	      
	      public void doGet(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, java.io.IOException {

	         throw new ServletException("GET method used with " +
	            getClass( ).getName( )+": POST method required.");
	      }
}
