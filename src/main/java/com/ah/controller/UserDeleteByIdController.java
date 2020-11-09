package com.ah.controller;

import com.ah.service.Impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteById")
public class UserDeleteByIdController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ids = req.getParameter("id");
        Integer id = Integer.valueOf(ids);
        UserServiceImpl userService = new UserServiceImpl();
        int res = userService.deleteById(id);
        if (res == 1) {
            resp.sendRedirect("findAll");
        } else {
            req.getRequestDispatcher("/err.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
