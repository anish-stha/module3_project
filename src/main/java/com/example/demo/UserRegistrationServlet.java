package com.example.demo;

import java.io.*;
import java.util.Base64;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "UserRegistration", value = "/user_registration")
@MultipartConfig
public class UserRegistrationServlet extends HttpServlet {
    private String message;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResp/WEB-INF/onse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/project.jsp");
        view.forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        // doGet(request, response);

        // TODO Auto-generated method stub
        final PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String location = request.getParameter("location");
        String gender = request.getParameter("gender");
        String experience = request.getParameter("experience");
        String fileName = request.getParameter("fileName");

        /*
         * request.getPart is to get the uploaded file handler.
         * You can use filePart.getInputStream() to read the streaming data from client, for example:
         * InputStream filecontent = filePart.getInputStream();
         */
        Part filePart = request.getPart("file");
        InputStream filecontent = filePart.getInputStream();
        System.out.println("This is a test");
        /*
         * fileout is for you to save the uploaded picture in your local disk.
         * */


        String webInfPath = getServletConfig().getServletContext().getRealPath("/");
        File newFile = new File(webInfPath + fileName);
        FileOutputStream fileout = new FileOutputStream(newFile);

        /*
         * Write your code here
         * Step 1: check whether the client's inputs are complete or not; if anything is missing, return a web page that contains a link to go back to the registration page (e.g., UserRegistration.html)
         * Step 2: save the uploaded picture under your project WebContent directory, for example, mine is "F:\workspace\UserRegistrationProject\WebContent".
         * Step 3: send back the client's registration information to the client, remember, the client should be able to see all the information, including the profile picture.
         * */

        // Set response content type
        response.setContentType("text/html");

        if (name != null && gender != null && email != null && location != null && experience != null && fileName != null && filecontent != null) {
            // We have everything we need
            byte[] content =filecontent.readAllBytes();
            fileout.write(content);
            out.println("<h1>" + "Welcome " + name +"</h1>");
            out.println("<div>" + "Your name:" + name + "</div>");
            out.println("<div>" + "Your email:" + email + "</div>");
            out.println("<div>" + "Your location:" + location + "</div>");
            out.println("<div>" + "Your gender:" + gender + "</div>");
            out.println("<div>" + "Your experience:" + experience + "</div>");
            out.println("<div>" + "Your profile picture " + fileName + " has been uploaded successfully"  +"</div>");
            out.println("<img src='data:image/jpg;base64," + Base64.getEncoder().encodeToString(content) + "' alt='image' ></img>");
        } else {
            out.println("<h1>Your input info is not complete, try again <a href=\"user_registration\">Go back</a></h1>");
        }
    }
}