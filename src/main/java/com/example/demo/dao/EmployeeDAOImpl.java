package com.example.demo.dao;

import com.example.demo.dto.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

    @Autowired
    private EntityManager entityManager;

    @Override
    public List<Employee> getAllEmployees() {
        Query query = entityManager.createQuery("from Employee");
        List<Employee> allEmployees=query.getResultList();
        return allEmployees;
    }

    @Override
    public void saveEmployee(Employee employee) {
        Employee newEmployee = entityManager.merge(employee);
        employee.setEmployeeId(newEmployee.getEmployeeId());
    }

    @Override
    public Employee getEmployee(int employeeId) {
        Employee employee = entityManager.find(Employee.class, employeeId);
        return employee;
    }

    @Override
    public void deleteEmployee(int employeeId) {
        Query query = entityManager.createQuery("delete from Employee "+ "where employeeId=:employeeId");
        query.setParameter("employeeId",employeeId);
        query.executeUpdate();
    }
}
