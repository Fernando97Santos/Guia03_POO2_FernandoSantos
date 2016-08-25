/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.vista;

import com.sv.udb.controlador.TipoDocuCtrl;
import com.sv.udb.modelo.TipoDocu;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ferna
 */
@WebServlet(name = "TipoDocuServ", urlPatterns = {"/TipoDocuServ"})
public class TipoDocuServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean esValido = request.getMethod().equals("POST");
        if(esValido)
        {
            String mens = "";
            String CRUD = request.getParameter("cursBton");
            if(CRUD.equals("Guardar"))
            {
                TipoDocu obje = new TipoDocu();
                obje.setNombTipoDocu(request.getParameter("NombTipoDocu"));
                obje.setFechAlta(new Date());
                obje.setEsta(1);
                mens = new TipoDocuCtrl().guar(obje) ? "Datos guardados exitosamente" : "Datos NO guardados";
            }
            else if(CRUD.equals("Consultar"))
            {
                long Codi = Long.parseLong(request.getParameter("codiTipoDocu") == null ? 
                        "0" : request.getParameter("codiTipoDocu"));
                TipoDocu objeEqui = new TipoDocuCtrl().get(Codi);
                if(objeEqui != null)
                {
                    request.setAttribute("CodiTipoDocu", objeEqui.getCodiTipoDocu());
                    request.setAttribute("NombTipoDocu", objeEqui.getNombTipoDocu());
                }
            }
            else if(CRUD.equals("Modificar"))
            {
                TipoDocu obje = new TipoDocu();
                obje.setNombTipoDocu(request.getParameter("NombTipoDocu"));
                obje.setFechAlta(new Date());
                obje.setEsta(1);
                obje.setCodiTipoDocu(Long.parseLong(request.getParameter("CodiTipoDocu")));
                mens = new TipoDocuCtrl().modi(obje) ? "Datos modificados" : "Datos no modificados";
            }
            else if(CRUD.equals("Eliminar"))
            {
               long CodiLuga = Long.parseLong(request.getParameter("CodiLuga"));
               mens = new TipoDocuCtrl().elim(CodiLuga) ? "Datos Eliminados" : "Datos no eliminados"; 
            }
            request.setAttribute("mensAler", mens);
            request.getRequestDispatcher("TipoDocu.jsp").forward(request, response);
        }
        else
        {
            response.sendRedirect(request.getContextPath() + "TipoDocu.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
