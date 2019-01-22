/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mbs;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.sql.*;
/**
 *
 * @author spring
 */
public class Login extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        boolean success= false;
        HttpSession session=request.getSession(true);
        User ub = new User();
        session.setAttribute("ub",ub);
        //PrintWriter out = response.getWriter();
        
        //depending on which form on index.jsp was used we login or register
        //failure returns to index.jsp, success spawns cw
        //the userbean is used to transfer information
        if(request.getParameter("log")!=null){
            String connectionURL = "jdbc:derby://localhost:1527/guojing";
            ub.setUsername(request.getParameter("username"));
            ub.setPassword(request.getParameter("password"));
        try {
            Connection conn = DriverManager.getConnection(connectionURL, "is2560", "is2560"); 
            String sql = "SELECT * FROM USERS where USERNAME='"+ub.getUsername()+"'  and PASSWORD='"+ub.getPassword()+"' ";
//            
            Statement st = conn.createStatement();
            ResultSet rs=null;
            rs=st.executeQuery(sql); 
            //out.println(sql);
            while(rs.next()){
                success = true;
            }
            rs.close(); 
            st.close(); 
            conn.close();
            } catch (SQLException ex) { 
                System.out.println("Connect failed ! ");
            }
            if (success==true){
                ub.setUsername(request.getParameter("username"));
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/login_succeed.jsp");
                rd.forward(request, response);
            }
            else{
                //ub.setStatus("LOGIN FAILURE RETRY");
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/login_fail.jsp");
                rd.forward(request, response);
            }
            }
        
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
