package com.example.demo.service;

import com.example.demo.dao.EmployeeDAO;
import com.example.demo.dto.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class EmployeeService {
    @Autowired private EmployeeDAO employeeDao;
    @Transactional
    public List<Employee> getAllEmployees(){
        return employeeDao.getAllEmployees();
    }

    @Transactional
    public void saveEmployee(Employee employee){
        employeeDao.saveEmployee(employee);
    }

    @Transactional
    public Employee getEmployee(int employeeId){
        return employeeDao.getEmployee(employeeId);
    }

    @Transactional
    public void deleteEmployee(int employeeId){
        employeeDao.deleteEmployee(employeeId);
    }



}
