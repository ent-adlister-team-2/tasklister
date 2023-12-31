package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Household;
import com.codeup.adlister.models.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/tasks/create")
public class CreateTaskServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("household") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/tasks/create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Household loggedInHousehold = (Household) request.getSession().getAttribute("household");
        Boolean repeatableTask = request.getParameter("repeatable") != null;
        Boolean taskStatus = request.getParameter("status") != null;
        Task task = new Task(
                request.getParameter("name"),
                request.getParameter("description"),
                repeatableTask,
                taskStatus,
                loggedInHousehold.getId()
        );
        DaoFactory.getTasksDao().insert(task);
        response.sendRedirect("/tasks");
    }
}
