package com.baizhi.service;

import com.baizhi.dao.EmpDAO;
import com.baizhi.entity.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service("empService")
@Transactional
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpDAO empDAO;


    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Emp> findAll(Integer page, Integer rows) {
        int start = (page-1)*rows;
        return empDAO.findAll(start,rows);
    }

    @Override
    public Long findTotalCounts() {
        return empDAO.findTotalCounts();
    }

    @Override
    public void update(Emp emp) {
        empDAO.update(emp);
    }

    @Override
    public void save(Emp emp) {
        emp.setId(UUID.randomUUID().toString());
        empDAO.save(emp);
    }

    @Override
    public void delete(String id) {
        empDAO.delete(id);
    }
}
