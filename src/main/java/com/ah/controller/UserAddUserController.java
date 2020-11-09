package com.ah.controller;

import com.ah.pojo.User;
import com.ah.service.Impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addUser")
public class UserAddUserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        name = new String(name.getBytes("iso-8859-1"), "utf-8");
        Integer tel = Integer.valueOf(req.getParameter("tel"));
        String addr = req.getParameter("address");
        addr = new String(addr.getBytes("iso-8859-1"), "utf-8");
        User user = new User(null, name, addr, tel);
        UserServiceImpl userService = new UserServiceImpl();
        int res = userService.addInsertUser(user);
        if (res == 1) {
            resp.sendRedirect("findAll");
        } else {
            req.getRequestDispatcher("/err.jsp").forward(req, resp);
        }
    }
}
