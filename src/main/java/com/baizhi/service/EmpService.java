package com.baizhi.service;

import com.baizhi.entity.Emp;

import java.util.List;

public interface EmpService {


    //分页查询所有
    List<Emp> findAll(Integer page,Integer rows);

    //查询总条数
    Long findTotalCounts();

    //保存员工信息
    void save(Emp emp);

    //修改员工信息
    void update(Emp emp);

    //根据id删除员工信息
    void delete(String id);
}
