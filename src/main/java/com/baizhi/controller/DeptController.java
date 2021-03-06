package com.baizhi.controller;

import com.baizhi.entity.Dept;
import com.baizhi.service.DeptService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("dept")
public class DeptController {

    private static final Logger log = LoggerFactory.getLogger(DeptController.class);


    @Autowired
    private DeptService deptService;


    @RequestMapping("findAll")
    public void findAll(HttpServletResponse response) throws IOException {
        //查询所有
        List<Dept> depts = deptService.findAll();
        //html   <select><option value="1">研发部</option>....</select>
        StringBuilder sb = new StringBuilder();
        sb.append("<select>");
        //遍历部分 构建option标签
        depts.forEach(dept->{
            sb.append("<option value="+dept.getId()+">"+ dept.getName() +"</opion>");
        });
        sb.append("</select>");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        response.getWriter().println(sb.toString());
    }
}
