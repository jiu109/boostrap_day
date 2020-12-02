package com.baizhi.dao;

import com.baizhi.entity.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpDAO {


    //员工查询所有
    List<Emp> findAll(@Param("start") Integer start,@Param("rows") Integer rows);

    //查询总条数
    Long findTotalCounts();
    //保存员工信息
    void save(Emp emp);
    //修改员工信息
    void update(Emp emp);
    //根据id删除员工信息
    void delete(String id);



}
