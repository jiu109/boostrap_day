package com.baizhi.controller;

import com.alibaba.druid.util.StringUtils;
import com.baizhi.entity.Emp;
import com.baizhi.service.EmpService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("emp")
public class EmpController {

    private static final Logger log = LoggerFactory.getLogger(EmpController.class);


    @Autowired
    private EmpService empService;


    /**
     * 修改方法  String oper add:添加  edit:修改   del:删除
     */
    @RequestMapping("edit")
    @ResponseBody
    public  void edit(Emp emp,String oper){
        log.info("当前操作: {}",oper);
        //判断是什么操作
        if(StringUtils.equals("add",oper)){
            log.info("员工姓名信息: {}, 员工性别信息: {},员工的部门id: {}",emp.getName(),emp.getSex(),emp.getDept().getId());
            empService.save(emp);
        }
        if(StringUtils.equals("edit",oper)){
            log.info("员工姓名信息: {}, 员工性别信息: {},员工的部门id: {}",emp.getName(),emp.getSex(),emp.getDept().getId());
            empService.update(emp);
        }
        if(StringUtils.equals("del",oper)){
            log.info("删除的员工id: {}",emp.getId());
            empService.delete(emp.getId());
        }
    }

    /**
     * 分页查询   String searchField  搜索的字段   searchOper eq  = 执行什么样搜索 String searchString  搜索值
     *           where 字段  <if test="searchOper==eq"> </if>  值
     * @return
     */
    @RequestMapping("findAll")
    @ResponseBody
    public Map<String,Object> findAll(Integer page, Integer rows){
        log.info("当前页: {},每页显示记录数: {}",page,rows);
        HashMap<String, Object> result = new HashMap<>();
        //分页查询的结果
        List<Emp> emps = empService.findAll(page, rows);
        //总条数
        Long totalCounts = empService.findTotalCounts();
        //总页数
        Long totalPage = totalCounts%rows==0?totalCounts/rows:(totalCounts/rows)+1;
        result.put("page",page);
        result.put("total",totalPage);
        result.put("records",totalCounts);
        result.put("rows",emps);
        return result;
    }


    public String get(String searchOper){
        Map<String,String> keyDic = new HashMap<>();
        keyDic.put("eq","=");
        keyDic.put("ne","!=");
        keyDic.put("cn","containt");
        return keyDic.get(searchOper);
    }

}
