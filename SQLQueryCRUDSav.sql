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

INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('Слава', 'Кодриенко', 'Александрович', '89606666661', 'свободен', '10:11:00')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('Сергей', 'Комаров', 'Алексеевич', '89505555555', 'свободен', '12:30:12')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('Максим', 'Сапожников', 'Олегович', '89404444444', 'свободен', '10:00:00')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('Роман', 'Воронин', 'Станославович', '89303333333', 'занят', '10:11:00')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('Евгений', 'Женев', 'Евгениевич', '89202222222', 'свободен', '11:20:10')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('Дмитрий', 'Комнатный', 'Сергеевич', '89601212121', 'занят', '10:00:00')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('Владимир', 'Зверев', 'Дмитриевич', '89999999999', 'свободен', '10:10:10')
INSERT INTO Courier(name, surname, middle_name, phone, status, free_time) values('Виктор', 'Кроль', 'Владиимрович', '89888888888', 'занят', '10:11:00')

INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Наталья', 'Морозова', 'Александровна', 'Ленина', '60', '10', '89055555555')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Светлана', 'Снегирёва', 'Степановна', '8 Марта', '70', '12', '89222222222')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Илья', 'Тополев', 'Максимович', 'Первомайская', '44', '30', '89506666666')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Игорь', 'Иванов', 'Ильич', 'Бажова', '12', '21', '89011111111')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Мария', 'Глухих', 'Юрьевна', 'Свердлова', '10', '9', '89009090909')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Дарья', 'Летова', 'Марковна', 'Мамина-Сибиряка', '20', '15', '89002323232')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Сергей', 'Соболев', 'Игоревич', 'Шевченко', '12', '31', '89525252525')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Глеб', 'Болотов', 'Александрович', 'Карла-Либнехта', '24', '5', '89044444444')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Лада', 'Зимова', 'Дмитриевна', 'Луначарского', '80', '101', '89001010101')
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Ирина', 'Федосеева', 'Тимофеева', 'Куйбышева', '41', '23', '89000000000')

INSERT INTO Dish(name, price, composition) values('Пепперони', 300.00, 'колбаса, томаты, чеснок, перец, мука, дрожжи, соль, сахар')
INSERT INTO Dish(name, price, composition) values('Карбонара', 350.00, 'тесто, ветчина, сыр твёрдый, томаты, сливки, яйца, орегано')
INSERT INTO Dish(name, price, composition) values('Сцилия', 400.00, 'мука, тунец, маслины, помидоор, сыр твёрдый, кетчуп, оливковое масло, сахар, соль, дрожжи')
INSERT INTO Dish(name, price, composition) values('4 сыра', 420.00, 'тесто, сыр моцарелла, сыр горгонзола, сыр пармезан, масло оливковое, орегано')
INSERT INTO Dish(name, price, composition) values('Пицца с ветчиной и грибами', 450.00, 'шампиньон, ветчина, сыр, помидоры, лук, кетчуп, дрожжи, соль, сахар')

INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(6, 5, '10:55:00', '11:25:00', 350, 'готов', 'оплачен', 'доставлен', 'безнал')
INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(1, 2, '11:55:00', '12:25:00', 400, 'готов', 'оплачен', 'доставлен', 'онлайн')
INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(8, 4, '12:20:00', '12:50:00', 650, 'готов', 'не оплачен', 'не доставлен', 'безнал')
INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(4, 6, '12:40:00', '13:10:00', 300, 'не готов', 'не оплачен', 'не доставлен', 'безнал')
INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(3, 8, '12:45:00', '13:15:00', 820, 'не готов', 'не оплачен', 'не доставлен', 'наличные')

INSERT INTO Ordered_dishes(dish_id, order_id) values(2, 1)
INSERT INTO Ordered_dishes(dish_id, order_id) values(3, 2)
INSERT INTO Ordered_dishes(dish_id, order_id) values(1, 3)
INSERT INTO Ordered_dishes(dish_id, order_id) values(2, 3)
INSERT INTO Ordered_dishes(dish_id, order_id) values(1, 4)
INSERT INTO Ordered_dishes(dish_id, order_id) values(3, 5)
INSERT INTO Ordered_dishes(dish_id, order_id) values(4, 5)

--Ввод блюд в заказ (id блюд для примера)
INSERT INTO Orders(client_id, courier_id, cook_time, deliver_time, price, cook_status, pay_status, deliver_status, form_pay) values(2, 1, '10:10:10', '10:10:10', 0, 'не готов', 'не оплачен', 'не доставлен', 'безнал')
INSERT INTO Ordered_dishes(dish_id, order_id) values(1, (SELECT MAX(id) FROM Orders))
INSERT INTO Ordered_dishes(dish_id, order_id) values(2, (SELECT MAX(id) FROM Orders))

--Ввод данных клиента (номер для примера)
UPDATE Orders SET client_id = (SELECT id FROM Client WHERE phone = '89009090909') WHERE id = (SELECT MAX(id) FROM Orders)
--Если новый клиент
INSERT INTO Client(name, surname, middle_name, street, home, flat, phone) values('Ирина', 'Федосеева', 'Тимофеева', 'Куйбышева', '41', '23', '89000000000')

UPDATE Orders SET form_pay = 'наличные' WHERE id = (SELECT MAX(id) FROM Orders)

--Формирование чека (время для примера)
UPDATE Orders SET cook_time = '13:05:00' WHERE id = (SELECT MAX(id) FROM Orders)
UPDATE Orders SET deliver_time = '13:35:00' WHERE id = (SELECT MAX(id) FROM Orders)
UPDATE Orders SET price = (SELECT SUM(price) FROM (Ordered_dishes INNER JOIN Dish ON Ordered_dishes.dish_id = Dish.id) WHERE order_id = (SELECT MAX(id) FROM Orders))
--Информация в чеке
SELECT Client.name, surname, middle_name, phone, street, home, flat, Dish.name, Dish.price, Dish.composition, Orders.price, Orders.cook_time, Orders.deliver_time FROM ((Client INNER JOIN Orders ON Client.id = Orders.client_id) INNER JOIN Ordered_dishes ON Orders.id = Ordered_dishes.order_id) INNER JOIN Dish ON Ordered_dishes.dish_id = Dish.id WHERE Orders.id = 6

--Приготовление заказа (id заказа для примера)
UPDATE Orders SET cook_status = 'готов' WHERE id = 6
--Информация для кухни
SELECT Orders.id, Dish.name, Dish.composition, Orders.cook_time FROM (Orders INNER JOIN Ordered_dishes ON Orders.id = Ordered_dishes.order_id) INNER JOIN Dish ON Ordered_dishes.dish_id = Dish.id WHERE Orders.id = 6

--Распределение заказа между курьерами (id заказа для примера)
UPDATE Orders SET courier_id = (SELECT TOP 1 id FROM Courier WHERE status != 'занят' ORDER BY free_time ASC) WHERE id = 6
UPDATE Courier SET status = 'занят' WHERE id = (SELECT TOP 1 id FROM Courier WHERE status != 'занят' ORDER BY free_time ASC)

--Принятие оплаты (id заказа для примера)
UPDATE Orders SET pay_status = 'оплачен' WHERE id = 6
--При необходимости (qr для примера)
UPDATE Orders SET form_pay = 'QR-код' WHERE id = 6

--Встреча с клиентом (id заказа для примера)
SELECT phone FROM Client INNER JOIN Orders ON Client.id = Orders.client_id WHERE Orders.id = 6

--Выдача заказа клиенту (id заказа и время для примера)
UPDATE Orders SET deliver_status = 'доставлен' WHERE id = 6
--С курьером
UPDATE Courier SET free_time = '13:30:00' WHERE id = (SELECT courier_id FROM Orders WHERE id = 6)
UPDATE Courier SET status = 'свободен' WHERE id = (SELECT courier_id FROM Orders WHERE id = 6)