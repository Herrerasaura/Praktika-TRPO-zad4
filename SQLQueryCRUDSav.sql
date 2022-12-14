CREATE DATABASE Pizza

USE Pizza 
CREATE TABLE Courier(
	id int IDENTITY(1,1),
	name varchar(255),
	surname varchar(255),
	middle_name varchar(255),
	phone varchar(255),
	status varchar(255),
	free_time time(0),
	PRIMARY KEY(id)
)

USE Pizza
CREATE TABLE Client(
	id int IDENTITY(1,1),
	name varchar(255),
	surname varchar(255),
	middle_name varchar(255),
	street varchar(255),
	home varchar(255),
	flat varchar(255),
	phone varchar(255),
	PRIMARY KEY(id)
)

USE Pizza
CREATE TABLE Dish(
	id int IDENTITY(1,1),
	name varchar(255),
	price money,
	composition varchar(255),
	PRIMARY KEY(id)
)

USE Pizza
CREATE TABLE Orders(
	id int IDENTITY(1,1),
	client_id int FOREIGN KEY REFERENCES Client(id),
	courier_id int FOREIGN KEY REFERENCES Courier(id),
	cook_time time(0),
	deliver_time time(0),
	price money,
	cook_status varchar(255),
	pay_status varchar(255),
	deliver_status varchar(255),
	form_pay varchar (255),
	PRIMARY KEY(id)
)

USE Pizza
CREATE TABLE Ordered_dishes(
	dish_id int FOREIGN KEY REFERENCES Dish(id),
	order_id int FOREIGN KEY REFERENCES Orders(id)
)

INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('�����', '���������', '�������������', '89606666661', '��������', '10:11:00')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('������', '�������', '����������', '89505555555', '��������', '12:30:12')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('������', '����������', '��������', '89404444444', '��������', '10:00:00')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('�����', '�������', '�������������', '89303333333', '�����', '10:11:00')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('�������', '�����', '����������', '89202222222', '��������', '11:20:10')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('�������', '���������', '���������', '89601212121', '�����', '10:00:00')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('��������', '������', '����������', '89999999999', '��������', '10:10:10')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('������', '�����', '������������', '89888888888', '�����', '10:11:00')

INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('�������', '��������', '�������������', '������', '60', '10', '89055555555')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('��������', '��������', '����������', '8 �����', '70', '12', '89222222222')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('����', '�������', '����������', '������������', '44', '30', '89506666666')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('�����', '������', '�����', '������', '12', '21', '89011111111')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('�����', '������', '�������', '���������', '10', '9', '89009090909')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('�����', '������', '��������', '������-��������', '20', '15', '89002323232')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('������', '�������', '��������', '��������', '12', '31', '89525252525')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('����', '�������', '�������������', '�����-��������', '24', '5', '89044444444')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('����', '������', '����������', '������������', '80', '101', '89001010101')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('�����', '���������', '���������', '���������', '41', '23', '89000000000')

INSERT INTO Dish(name, price, composition) values('���������', 300.00, '�������, ������, ������, �����, ����, ������, ����, �����')
INSERT INTO Dish(name, price, composition) values('���������', 350.00, '�����, �������, ��� ������, ������, ������, ����, �������')
INSERT INTO Dish(name, price, composition) values('������', 400.00, '����, �����, �������, ��������, ��� ������, ������, ��������� �����, �����, ����, ������')
INSERT INTO Dish(name, price, composition) values('4 ����', 420.00, '�����, ��� ���������, ��� ����������, ��� ��������, ����� ���������, �������')
INSERT INTO Dish(name, price, composition) values('����� � �������� � �������', 450.00, '���������, �������, ���, ��������, ���, ������, ������, ����, �����')

INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(6, 5, '10:55:00', '11:25:00', 350, '�����', '�������', '���������', '������')
INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(1, 2, '11:55:00', '12:25:00', 400, '�����', '�������', '���������', '������')
INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(8, 4, '12:20:00', '12:50:00', 650, '�����', '�� �������', '�� ���������', '������')
INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(4, 6, '12:40:00', '13:10:00', 300, '�� �����', '�� �������', '�� ���������', '������')
INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(3, 8, '12:45:00', '13:15:00', 820, '�� �����', '�� �������', '�� ���������', '��������')

INSERT INTO Ordered_dishes(dish_id, order_id) values(2, 1)
INSERT INTO Ordered_dishes(dish_id, order_id) values(3, 2)
INSERT INTO Ordered_dishes(dish_id, order_id) values(1, 3)
INSERT INTO Ordered_dishes(dish_id, order_id) values(2, 3)
INSERT INTO Ordered_dishes(dish_id, order_id) values(1, 4)
INSERT INTO Ordered_dishes(dish_id, order_id) values(3, 5)
INSERT INTO Ordered_dishes(dish_id, order_id) values(4, 5)

--���� ���� � ����� (id ���� ��� �������)
INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(2, 1, '10:10:10', '10:10:10', 0, '�� �����', '�� �������', '�� ���������', '������')
INSERT INTO Ordered_dishes(dish_id, order_id) values(1, (SELECT MAX(id) FROM Orders))
INSERT INTO Ordered_dishes(dish_id, order_id) values(2, (SELECT MAX(id) FROM Orders))

--���� ������ ������� (����� ��� �������)
UPDATE Orders SET client_id = (SELECT id FROM Client WHERE phone = '89009090909') WHERE id = (SELECT MAX(id) FROM Orders)
--���� ����� ������
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('�����', '���������', '���������', '���������', '41', '23', '89000000000')

UPDATE Orders SET form_pay = '��������' WHERE id = (SELECT MAX(id) FROM Orders)

--������������ ���� (����� ��� �������)
UPDATE Orders SET cook_time = '13:05:00' WHERE id = (SELECT MAX(id) FROM Orders)
UPDATE Orders SET deliver_time = '13:35:00' WHERE id = (SELECT MAX(id) FROM Orders)
UPDATE Orders SET price = (SELECT SUM(price) FROM (Ordered_dishes INNER JOIN Dish ON Ordered_dishes.dish_id = Dish.id) WHERE order_id = (SELECT MAX(id) FROM Orders))
--���������� � ����
SELECT Client.name, surname, middle_name, phone, street, home, flat, Dish.name, Dish.price, Dish.composition, Orders.price, Orders.cook_time, Orders.deliver_time FROM ((Client INNER JOIN Orders ON Client.id = Orders.client_id) INNER JOIN Ordered_dishes ON Orders.id = Ordered_dishes.order_id) INNER JOIN Dish ON Ordered_dishes.dish_id = Dish.id WHERE Orders.id = 6

--������������� ������ (id ������ ��� �������)
UPDATE Orders SET cook_status = '�����' WHERE id = 6
--���������� ��� �����
SELECT Orders.id, Dish.name, Dish.composition, Orders.cook_time FROM (Orders INNER JOIN Ordered_dishes ON Orders.id = Ordered_dishes.order_id) INNER JOIN Dish ON Ordered_dishes.dish_id = Dish.id WHERE Orders.id = 6

--������������� ������ ����� ��������� (id ������ ��� �������)
UPDATE Orders SET courier_id = (SELECT TOP 1 id FROM Courier WHERE status != '�����' ORDER BY free_time ASC) WHERE id = 6
UPDATE Courier SET status = '�����' WHERE id = (SELECT TOP 1 id FROM Courier WHERE status != '�����' ORDER BY free_time ASC)

--�������� ������ (id ������ ��� �������)
UPDATE Orders SET pay_status = '�������' WHERE id = 6
--��� ������������� (qr ��� �������)
UPDATE Orders SET form_pay = 'QR-���' WHERE id = 6

--������� � �������� (id ������ ��� �������)
SELECT phone FROM Client INNER JOIN Orders ON Client.id = Orders.client_id WHERE Orders.id = 6

--������ ������ ������� (id ������ � ����� ��� �������)
UPDATE Orders SET deliver_status = '���������' WHERE id = 6
--� ��������
UPDATE Courier SET free_time = '13:30:00' WHERE id = (SELECT courier_id FROM Orders WHERE id = 6)
UPDATE Courier SET status = '��������' WHERE id = (SELECT courier_id FROM Orders WHERE id = 6)