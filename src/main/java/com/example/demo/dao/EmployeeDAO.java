package com.example.demo.dao;

import com.example.demo.dto.Employee;

import java.util.List;

public interface EmployeeDAO {

    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    public Employee getEmployee(int employeeId);

    public void deleteEmployee(int employeeId);
}
