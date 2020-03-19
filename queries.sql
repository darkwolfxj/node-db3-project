-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    select ProductName as Product, CategoryName as Category
    from Product
    join Category
    on Product.Product = Category.Category
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    select [Order].id, Shipper.CompanyName
        from [Order]
        join Shipper
        on [Order].shipvia = Shipper.id
        where OrderDate < "2012-08-09"
    
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select product.productname, orderdetail.Quantity
        from product
        join orderdetail
        on product.id = orderdetail.productid
        where orderid = 10251
        order by productname 
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
    select [order].id as Order_ID, customer.companyname as Customer_Company_Name, employee.lastname as Employee_Last_Name
    from [order]
    join customer
    on [order].customerid = customer.id
    join employee 
    on [order].employeeid = employee.id