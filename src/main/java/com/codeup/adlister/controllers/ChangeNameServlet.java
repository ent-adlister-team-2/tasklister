package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Household;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet ("/profile/change-name")
public class ChangeNameServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if (request.getSession().getAttribute("household") == null) {
            response.sendRedirect("/login");
            return;
        }
        Household household = (Household) request.getSession().getAttribute("household");
        request.setAttribute("household", household);
        request.getRequestDispatcher("/WEB-INF/households/change-name.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Household loggedInHousehold = (Household) request.getSession().getAttribute("household");

        String password = request.getParameter("password");
        String name = request.getParameter("name");

        Boolean validPassword = BCrypt.checkpw(password, loggedInHousehold.getPassword());

        if(validPassword) {
            loggedInHousehold.setName(name);
            try {
                DaoFactory.getHouseholdsDao().updateName(loggedInHousehold.getId(), loggedInHousehold.getName());
                response.sendRedirect("/profile");
            } catch (SQLException e) {
                throw new RuntimeException("Unable to change name.", e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            request.setAttribute("wrongPassword", true);
            request.getRequestDispatcher("/WEB-INF/households/change-name.jsp").forward(request, response);
        }
    }
}
