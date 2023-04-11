-- 姓名：黄俊祥-205220027
-- 学号：205220027
-- 提交前请确保本次实验独立完成，若有参考请注明并致谢。

-- ____________________________________________________________________________________________________________________________________________________________________________________________________________
-- BEGIN Q1.1
delimiter $$
create procedure find(in productName Varchar(40))
begin
	SELECT A.customerNo as 客户编号, A.customerName as 客户编号, B.orderNo as 订单编, B.quantity as 订单编,B.quantity * B.price as 订货金额
	From Customer A , OrderDetail B, OrderMaster C 
	Where B.productNo = ALL 
		(Select P.productNo from Product P Where P.ProductName = productName)
		and A.customerNo = C.customerNo and B.orderNo = C.orderNo
	Order BY B.quantity * B.price DESC;
end$$
delimiter ;
Call find('32M DRAM');

-- END Q1.1

-- ____________________________________________________________________________________________________________________________________________________________________________________________________________
-- BEGIN Q1.2
delimiter $$
create procedure find(in employeeNo char(8))
begin
	SELECT A.employeeNo as 员工编号,A.employeeName as 姓名, A.gender as 性别,A.hireDate as 雇佣日期,A.department as 所属部门
	FROM employee A 
	WHERE EXISTS 
		(Select * From employee B where B.employeeNo =employeeNo and A.department = B.department and A.hireDate < B.hireDate);
	end$$
delimiter ;
Call find('E2008005');
-- END Q1.2

-- ____________________________________________________________________________________________________________________________________________________________________________________________________________
-- BEGIN Q2.1
DELIMITER $$
create function counting_name(productName varchar(40))
	returns float deterministic
	BEGIN
	DECLARE average float;
		SELECT (sum(A.price)/sum(A.quantity)) into average
		FROM OrderDetail A, Product B
		Where A.productNo = B.productNo and B.productName = productName;
	return average;
	END $$
DELIMITER ;
Select A.productName as 商品名称,counting_name(A.productName) as 订购平均 From Product A;
-- END Q2.1

-- ____________________________________________________________________________________________________________________________________________________________________________________________________________
-- BEGIN Q2.2
DELIMITER $$
create function counting_product(productNo char(9))
	returns INT deterministic
	BEGIN
	DECLARE sum_product INT;
		SELECT sum(A.quantity) into sum_product
		FROM OrderDetail A
		Where A.productNo = productNo;
	return sum_product;
	END $$
DELIMITER ;

Select A.productNo as 商品编号,A.productName as 商品名称,counting_product(A.productNo) as 销售数量
From Product A
WHERE counting_product(A.productNo) > 4;
-- END Q2.2

-- ____________________________________________________________________________________________________________________________________________________________________________________________________________
-- BEGIN Q3.1
DELIMITER $$
CREATE TRIGGER NEW_ORDER 
BEFORE INSERT ON Product
FOR EACH ROW BEGIN
	IF(NEW.ProductPrice > 1000) THEN
		SET NEW.ProductPrice = 1000;
	END IF;
END$$
DELIMITER ;
insert Product values('1','32M DRAM','内存',1200);
insert Product values('2','17寸显示器','显示器',1400);
Select * From Product;
-- END Q3.1

-- ____________________________________________________________________________________________________________________________________________________________________________________________________________
-- BEGIN Q3.2
delimiter &&
create trigger setsalary after insert on OrderMaster for each row
begin 
	update Employee set salary=(case when hiredate<19920101 then salary*(1.08)
    else salary*(1.05) end)
    where employeeNo=new.employeeNo;
end &&
delimiter ;
insert Employee values('1','1','F','19711013','1',null,  '19890528','科','职员',5000);
insert Employee values('2','2','F','19711106','2',null,  '19920102','科','会计',5000);
select employeeNo,hireDate,salary from Employee where employeeNo='1' or employeeNo='2';
insert OrderMaster values('200801090090','C20050001','1','20080109',0.00,'I000000001'); 
insert OrderMaster values('200801090091','C20050004','2','20080109',0.00,'I000000002');
select employeeNo,hireDate,salary from Employee where employeeNo='1' or employeeNo='2';
-- END Q3.2

