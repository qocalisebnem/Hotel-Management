
ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/YYYY';


CREATE TABLE customer (
    customer_id   NUMBER PRIMARY KEY,
    first_name    VARCHAR2(20),
    last_name     VARCHAR2(20),
    phone_number  VARCHAR2(20),
    email         VARCHAR2(30)
);

INSERT INTO customer VALUES (21225, 'Lal?',   'K?rimova',    '+994514754863', 'lale.kerimova@gmail.com');
INSERT INTO customer VALUES (21226, '?lham',  '?smay?lov',   '+994502233235', 'ilham.ismayilov@gmail.com');
INSERT INTO customer VALUES (21227, 'Kamal',  '?liyev',      '+994552233236', 'kamal.aliyev@gmail.com');
INSERT INTO customer VALUES (21228, '??bn?m', 'H?s?nova',    '+994702233237', 'shabnam.hasanova@gmail.com');
INSERT INTO customer VALUES (21229, 'Orxan',  'Quliyev',     '+994772233238', 'orxan.quliyev@gmail.com');
INSERT INTO customer VALUES (21230, 'Elvin',  'R?himov',     '+994512233239', 'elvin.rahimov@gmail.com');
INSERT INTO customer VALUES (21231, 'R??ad',  'M?mm?dov',    '+994502233240', 'rashad.mammadov@gmail.com');
INSERT INTO customer VALUES (21232, 'Nigar',  'Abbasova',    '+994552233241', 'nigar.abbasova@gmail.com');
INSERT INTO customer VALUES (21233, 'Elnur',  'S?f?rov',     '+994702233242', 'elnur.safarov@gmail.com');
INSERT INTO customer VALUES (21234, 'Aysel',  '?liyeva',     '+994772233243', 'aysel.aliyeva@gmail.com');
INSERT INTO customer VALUES (21235, 'Murad',  'Hüseynov',    '+994512233244', 'murad.huseynov@gmail.com');
INSERT INTO customer VALUES (21236, 'Zaur',   'Qas?mov',     '+994502233245', 'zaur.qasimov@gmail.com');
INSERT INTO customer VALUES (21237, 'Günel',  '?brahimova', '+994552233246', 'gunel.ibrahimova@gmail.com');
INSERT INTO customer VALUES (21238, 'Sevinc', '?hm?dova',    '+994702233247', 'sevinc.ahmadova@gmail.com');
INSERT INTO customer VALUES (21239, 'K?nan',  'Mustafayev', '+994772233248', 'kenan.mustafayev@gmail.com');
INSERT INTO customer VALUES (21240, 'Tural',  'N?c?fov',     '+994512233249', 'tural.najafov@gmail.com');
INSERT INTO customer VALUES (21241, 'Leyla',  '??x?liyeva',  '+994502233250', 'leyla.shixaliyeva@gmail.com');
INSERT INTO customer VALUES (21242, 'Samir',  'Yusifov',     '+994552233251', 'samir.yusifov@gmail.com');
INSERT INTO customer VALUES (21243, 'El??n',  'Bayramov',    '+994702233252', 'elshan.bayramov@gmail.com');
INSERT INTO customer VALUES (21244, 'Aytac',  'Rzayeva',     '+994772233253', 'aytac.rzayeva@gmail.com');
INSERT INTO customer VALUES (21245, 'Ramin',  'Kamalov',    '+994512233254', 'ramin.kamalov@gmail.com');
INSERT INTO customer VALUES (21246, 'F?rid',  'C?f?rov',    '+994502233255', 'farid.jafarov@gmail.com');
INSERT INTO customer VALUES (21247, 'Vüsal',  'Sultanov',   '+994552233256', 'vusal.sultanov@gmail.com');
INSERT INTO customer VALUES (21248, 'N?rmin', '?liyeva',    '+994702233257', 'narmin.aliyeva@gmail.com');
INSERT INTO customer VALUES (21249, 'Ayd?n',  'Zeynalov',   '+994772233258', 'aydin.zeynalov@gmail.com');
INSERT INTO customer VALUES (21250, 'Z?hra',  'Ta??yeva',   '+994512233259', 'zahra.taghiyeva@gmail.com');

SELECT
    *
FROM customer;


CREATE TABLE employee (
    employee_id  NUMBER PRIMARY KEY,
    full_name    VARCHAR2(20),
    position     VARCHAR2(20),
    salary       NUMBER
);

INSERT ALL
INTO employee (employee_id, full_name, position, salary) VALUES (18425, 'Ali Aliyev', 'Manager', 2500)
INTO employee (employee_id, full_name, position, salary) VALUES (28762, 'Leyla M?mm?dova', 'Receptionist', 1000)
INTO employee (employee_id, full_name, position, salary) VALUES (37624, 'Murad H?s?nov', 'Receptionist', 1000)
INTO employee (employee_id, full_name, position, salary) VALUES (43945, 'Aysel Quliyeva', 'Housekeeping', 900)
INTO employee (employee_id, full_name, position, salary) VALUES (55233, 'Elmar Rzayev', 'Housekeeping', 900)
INTO employee (employee_id, full_name, position, salary) VALUES (67634, 'Rüf?t M?mm?dov', 'Security', 1020)
INTO employee (employee_id, full_name, position, salary) VALUES (75241, 'Nigar Hüseynova', 'Accountant', 1300)
INTO employee (employee_id, full_name, position, salary) VALUES (89263, 'Kamran Quliyev', 'Housekeeping', 900)
INTO employee (employee_id, full_name, position, salary) VALUES (96353, 'Sevda M?mm?dova', 'Receptionist', 1000)
INTO employee (employee_id, full_name, position, salary) VALUES (10353, 'Orxan Hüseynli', 'Security', 1020)
INTO employee (employee_id, full_name, position, salary) VALUES (11452, 'Turan ?liyev', 'Valet', 950)
INTO employee (employee_id, full_name, position, salary) VALUES (12543, 'Amina H?s?nova', 'Chief Accountant', 1450)
SELECT * FROM dual;

select * from employee;


CREATE TABLE Booking (
    booking_id   NUMBER PRIMARY KEY,
    book_type    VARCHAR2(20),
    book_date    DATE,
    customer_id  NUMBER NOT NULL,
    employee_id  NUMBER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

INSERT INTO Booking VALUES (31311, 'Third_Party', TO_DATE('01/01/2025','MM/DD/YYYY'), 21225, NULL);
INSERT INTO Booking VALUES (31312, 'Direct',      TO_DATE('01/01/2025','MM/DD/YYYY'), 21226, 28762);
INSERT INTO Booking VALUES (31313, 'Direct',      TO_DATE('01/03/2025','MM/DD/YYYY'), 21227, 37624);
INSERT INTO Booking VALUES (31314, 'Third_Party', TO_DATE('01/08/2025','MM/DD/YYYY'), 21228, NULL);
INSERT INTO Booking VALUES (31315, 'Third_Party', TO_DATE('01/10/2025','MM/DD/YYYY'), 21229, NULL);
INSERT INTO Booking VALUES (31316, 'Direct',      TO_DATE('01/15/2025','MM/DD/YYYY'), 21230, 96353);
INSERT INTO Booking VALUES (31317, 'Direct',      TO_DATE('01/17/2025','MM/DD/YYYY'), 21231, 37624);
INSERT INTO Booking VALUES (31318, 'Third_Party', TO_DATE('01/20/2025','MM/DD/YYYY'), 21232, NULL);
INSERT INTO Booking VALUES (31319, 'Direct',      TO_DATE('01/22/2025','MM/DD/YYYY'), 21233, 28762);
INSERT INTO Booking VALUES (31320, 'Third_Party', TO_DATE('01/30/2025','MM/DD/YYYY'), 21234, NULL);
INSERT INTO Booking VALUES (31321, 'Direct',      TO_DATE('02/08/2025','MM/DD/YYYY'), 21235, 96353);
INSERT INTO Booking VALUES (31322, 'Third_Party', TO_DATE('02/15/2025','MM/DD/YYYY'), 21236, NULL);
INSERT INTO Booking VALUES (31323, 'Third_Party', TO_DATE('02/17/2025','MM/DD/YYYY'), 21237, NULL);
INSERT INTO Booking VALUES (31324, 'Direct',      TO_DATE('02/20/2025','MM/DD/YYYY'), 21238, 96353);
INSERT INTO Booking VALUES (31325, 'Third_Party', TO_DATE('02/25/2025','MM/DD/YYYY'), 21239, NULL);
INSERT INTO Booking VALUES (31326, 'Third_Party', TO_DATE('03/10/2025','MM/DD/YYYY'), 21240, NULL);
INSERT INTO Booking VALUES (31327, 'Direct',      TO_DATE('03/18/2025','MM/DD/YYYY'), 21241, 37624);
INSERT INTO Booking VALUES (31328, 'Direct',      TO_DATE('03/30/2025','MM/DD/YYYY'), 21242, 28762);
INSERT INTO Booking VALUES (31329, 'Third_Party', TO_DATE('04/07/2025','MM/DD/YYYY'), 21243, NULL);
INSERT INTO Booking VALUES (31330, 'Third_Party', TO_DATE('04/10/2025','MM/DD/YYYY'), 21244, NULL);
INSERT INTO Booking VALUES (31331, 'Third_Party', TO_DATE('04/17/2025','MM/DD/YYYY'), 21245, NULL);
INSERT INTO Booking VALUES (31332, 'Direct',      TO_DATE('04/20/2025','MM/DD/YYYY'), 21246, 37624);
INSERT INTO Booking VALUES (31333, 'Third_Party', TO_DATE('04/29/2025','MM/DD/YYYY'), 21247, NULL);
INSERT INTO Booking VALUES (31334, 'Direct',      TO_DATE('05/10/2025','MM/DD/YYYY'), 21248, 37624);
INSERT INTO Booking VALUES (31335, 'Direct',      TO_DATE('05/30/2025','MM/DD/YYYY'), 21249, 96353);
select * from booking;

CREATE TABLE Reservation (
    res_id          NUMBER PRIMARY KEY,
    check_in_date   DATE,
    check_out_date  DATE,
    customer_id     NUMBER,
    booking_id      NUMBER,
    CONSTRAINT fk_res_customer FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id),
    CONSTRAINT fk_res_booking FOREIGN KEY (booking_id)
        REFERENCES booking(booking_id)
);

INSERT INTO Reservation VALUES (1001, TO_DATE('01/03/2025','MM/DD/YYYY'), TO_DATE('01/05/2025','MM/DD/YYYY'), 21225, 31311);
INSERT INTO Reservation VALUES (1002, TO_DATE('01/01/2025','MM/DD/YYYY'), TO_DATE('01/02/2025','MM/DD/YYYY'), 21226, 31312);
INSERT INTO Reservation VALUES (1003, TO_DATE('01/03/2025','MM/DD/YYYY'), TO_DATE('01/05/2025','MM/DD/YYYY'), 21227, 31313);
INSERT INTO Reservation VALUES (1004, TO_DATE('01/09/2025','MM/DD/YYYY'), TO_DATE('01/12/2025','MM/DD/YYYY'), 21228, 31314);
INSERT INTO Reservation VALUES (1005, TO_DATE('01/11/2025','MM/DD/YYYY'), TO_DATE('01/12/2025','MM/DD/YYYY'), 21229, 31315);
INSERT INTO Reservation VALUES (1006, TO_DATE('01/15/2025','MM/DD/YYYY'), TO_DATE('01/16/2025','MM/DD/YYYY'), 21230, 31316);
INSERT INTO Reservation VALUES (1007, TO_DATE('01/17/2025','MM/DD/YYYY'), TO_DATE('01/18/2025','MM/DD/YYYY'), 21231, 31317);
INSERT INTO Reservation VALUES (1008, TO_DATE('01/20/2025','MM/DD/YYYY'), TO_DATE('01/22/2025','MM/DD/YYYY'), 21232, 31318);
INSERT INTO Reservation VALUES (1009, TO_DATE('01/22/2025','MM/DD/YYYY'), TO_DATE('01/23/2025','MM/DD/YYYY'), 21233, 31319);
INSERT INTO Reservation VALUES (1010, TO_DATE('01/30/2025','MM/DD/YYYY'), TO_DATE('01/31/2025','MM/DD/YYYY'), 21234, 31320);
INSERT INTO Reservation VALUES (1011, TO_DATE('02/08/2025','MM/DD/YYYY'), TO_DATE('02/09/2025','MM/DD/YYYY'),21235, 31321);
INSERT INTO Reservation VALUES (1012, TO_DATE('02/15/2025','MM/DD/YYYY'), TO_DATE('02/17/2025','MM/DD/YYYY'), 21236, 31322);
INSERT INTO Reservation VALUES (1013, TO_DATE('02/17/2025','MM/DD/YYYY'), TO_DATE('02/18/2025','MM/DD/YYYY'),21237, 31323);
INSERT INTO Reservation VALUES (1014, TO_DATE('02/20/2025','MM/DD/YYYY'), TO_DATE('02/21/2025','MM/DD/YYYY'), 21238, 31324);
INSERT INTO Reservation VALUES (1015, TO_DATE('02/25/2025','MM/DD/YYYY'), TO_DATE('02/26/2025','MM/DD/YYYY'), 21239, 31325);
INSERT INTO Reservation VALUES (1016, TO_DATE('03/10/2025','MM/DD/YYYY'), TO_DATE('03/11/2025','MM/DD/YYYY'),21240, 31326);
INSERT INTO Reservation VALUES (1017, TO_DATE('03/18/2025','MM/DD/YYYY'), TO_DATE('03/20/2025','MM/DD/YYYY'), 21241, 31327);
INSERT INTO Reservation VALUES (1018, TO_DATE('03/30/2025','MM/DD/YYYY'), TO_DATE('03/31/2025','MM/DD/YYYY'), 21242, 31328);
INSERT INTO Reservation VALUES (1019, TO_DATE('04/07/2025','MM/DD/YYYY'), TO_DATE('04/08/2025','MM/DD/YYYY'), 21243, 31329);
INSERT INTO Reservation VALUES (1020, TO_DATE('04/10/2025','MM/DD/YYYY'), TO_DATE('04/11/2025','MM/DD/YYYY'), 21244, 31330);
INSERT INTO Reservation VALUES (1021, TO_DATE('04/17/2025','MM/DD/YYYY'), TO_DATE('04/18/2025','MM/DD/YYYY'), 21245, 31331);
INSERT INTO Reservation VALUES (1022, TO_DATE('04/20/2025','MM/DD/YYYY'), TO_DATE('04/22/2025','MM/DD/YYYY'), 21246, 31332);
INSERT INTO Reservation VALUES (1023, TO_DATE('04/29/2025','MM/DD/YYYY'), TO_DATE('04/30/2025','MM/DD/YYYY'),21247, 31333);
INSERT INTO Reservation VALUES (1024, TO_DATE('05/10/2025','MM/DD/YYYY'), TO_DATE('05/11/2025','MM/DD/YYYY'), 21248, 31334);
INSERT INTO Reservation VALUES (1025, TO_DATE('05/30/2025','MM/DD/YYYY'), TO_DATE('05/31/2025','MM/DD/YYYY'), 21249, 31335);

select * from reservation;

SELECT c.customer_id
FROM customer c
LEFT JOIN booking b
ON c.customer_id = b.customer_id
WHERE b.customer_id IS NULL;

CREATE TABLE Room (
    Room_no         INTEGER NOT NULL PRIMARY KEY,
    Room_type       VARCHAR2(20),
    Bed_type        VARCHAR2(20),
    Room_price      NUMBER,
    res_id          NUMBER,
    FOREIGN KEY (res_id) REFERENCES Reservation(res_id)
);


INSERT INTO Room VALUES (101, 'Single', 'Queen', 100, 1010);
INSERT INTO Room VALUES (102, 'Double', 'King',180, 1003);
INSERT INTO Room VALUES (103, 'Suite', 'King',300, 1001);
INSERT INTO Room VALUES (104, 'Single', 'Queen',100, 1005);
INSERT INTO Room VALUES (105, 'Double', 'King', 180, 1012);
INSERT INTO Room VALUES (106, 'Suite', 'King', 300, 1015);
INSERT INTO Room VALUES (107, 'Single', 'Queen', 100, 1007);
INSERT INTO Room VALUES (108, 'Double', 'King', 180, 1020);
INSERT INTO Room VALUES (109, 'Suite', 'King',300, 1017);
INSERT INTO Room VALUES (110, 'Single', 'Queen',100, 1002);
INSERT INTO Room VALUES (111, 'Double', 'King',180, 1018);
INSERT INTO Room VALUES (112, 'Suite', 'King', 300, 1009);
INSERT INTO Room VALUES (113, 'Single', 'Queen',100, 1022);
INSERT INTO Room VALUES (114, 'Double', 'King',180, 1008);
INSERT INTO Room VALUES (115, 'Suite', 'King', 300, 1025);
INSERT INTO Room VALUES (116, 'Single', 'Queen',100, 1014);
INSERT INTO Room VALUES (117, 'Double', 'King',180, 1006);
INSERT INTO Room VALUES (118, 'Suite', 'King',300, 1011);
INSERT INTO Room VALUES (119, 'Single', 'Queen',100, 1013);
INSERT INTO Room VALUES (120, 'Double', 'King',180, 1016);
INSERT INTO Room VALUES (121, 'Suite', 'King', 300, 1024);
INSERT INTO Room VALUES (122, 'Single', 'Queen', 100, 1004);
INSERT INTO Room VALUES (123, 'Double', 'King', 180, 1019);
INSERT INTO Room VALUES (124, 'Suite', 'King',300, 1021);
INSERT INTO Room VALUES (125, 'Single', 'Queen',100, 1023);

select * from room;


CREATE TABLE Services (
    Service_id number PRIMARY KEY,
    Service_type VARCHAR2(20),
    Service_cost NUMBER
);
INSERT INTO services VALUES (55201,'SPA',60);
INSERT INTO services VALUES (55202,'Laundary',30);
INSERT INTO services VALUES (55203,'Breakfast',45);
INSERT INTO services VALUES (55204,'Lunch',50);
INSERT INTO services VALUES (55205,'Dinner',65);

select * from services;


CREATE TABLE Customer_Services (
    res_id     NUMBER,
    service_id NUMBER,
    FOREIGN KEY (res_id) REFERENCES Reservation(res_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);

INSERT INTO Customer_Services VALUES (1001, 55201);
INSERT INTO Customer_Services VALUES (1001, 55203);
INSERT INTO Customer_Services VALUES (1002, 55204);
INSERT INTO Customer_Services VALUES (1003, 55205);
INSERT INTO Customer_Services VALUES (1004, 55201);
INSERT INTO Customer_Services VALUES (1004, 55203);
INSERT INTO Customer_Services VALUES (1005, 55203);
INSERT INTO Customer_Services VALUES (1006, 55204);
INSERT INTO Customer_Services VALUES (1007, 55205);
INSERT INTO Customer_Services VALUES (1008, 55201);
INSERT INTO Customer_Services VALUES (1009, 55203);
INSERT INTO Customer_Services VALUES (1009, 55205);
INSERT INTO Customer_Services VALUES (1010, 55204);
INSERT INTO Customer_Services VALUES (1010, 55201);
INSERT INTO Customer_Services VALUES (1011, 55201);
INSERT INTO Customer_Services VALUES (1012, 55205);
INSERT INTO Customer_Services VALUES (1012, 55203);
INSERT INTO Customer_Services VALUES (1012, 55204);
INSERT INTO Customer_Services VALUES (1013, 55203);
INSERT INTO Customer_Services VALUES (1014, 55204);
INSERT INTO Customer_Services VALUES (1015, 55205);
INSERT INTO Customer_Services VALUES (1016, 55201);
INSERT INTO Customer_Services VALUES (1016, 55203);
INSERT INTO Customer_Services VALUES (1016, 55204);
INSERT INTO Customer_Services VALUES (1017, 55203);
INSERT INTO Customer_Services VALUES (1017, 55204);
INSERT INTO Customer_Services VALUES (1018, 55205);
INSERT INTO Customer_Services VALUES (1019, 55201);
INSERT INTO Customer_Services VALUES (1019, 55204);
INSERT INTO Customer_Services VALUES (1019, 55205);
INSERT INTO Customer_Services VALUES (1019, 55202);
INSERT INTO Customer_Services VALUES (1020, 55203);
INSERT INTO Customer_Services VALUES (1021, 55204);
INSERT INTO Customer_Services VALUES (1022, 55205);
INSERT INTO Customer_Services VALUES (1022, 55201);
INSERT INTO Customer_Services VALUES (1022, 55202);
INSERT INTO Customer_Services VALUES (1022, 55203);
INSERT INTO Customer_Services VALUES (1022, 55204);
INSERT INTO Customer_Services VALUES (1023, 55201);
INSERT INTO Customer_Services VALUES (1024, 55203);
INSERT INTO Customer_Services VALUES (1024, 55202);
INSERT INTO Customer_Services VALUES (1024, 55201);
INSERT INTO Customer_Services VALUES (1025, 55205);

select * from customer_services;

CREATE TABLE Invoice (
    Invoice_no   NUMBER PRIMARY KEY,
    Customer_id  NUMBER NOT NULL,
    Res_id       NUMBER NOT NULL,
    Invoice_date DATE,
    Amount       NUMBER,
    FOREIGN KEY (Customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (Res_id) REFERENCES Reservation(res_id)
);

CREATE OR REPLACE TRIGGER trg_invoice_amount
BEFORE INSERT ON Invoice
FOR EACH ROW
DECLARE
    v_room_price     NUMBER;
    v_services_total NUMBER;
    v_nights         NUMBER;
BEGIN
    -- Qalma gec?l?rinin say?
    SELECT (check_out_date - check_in_date)
    INTO v_nights
    FROM Reservation
    WHERE res_id = :NEW.res_id;

    -- Ota??n qiym?ti (1 reservation = 1 room)
    SELECT room_price
    INTO v_room_price
    FROM Room
    WHERE res_id = :NEW.res_id;

    -- Servisl?rin c?mi
    SELECT NVL(SUM(s.service_cost), 0)
    INTO v_services_total
    FROM Customer_Services cs
    JOIN Services s ON cs.service_id = s.service_id
    WHERE cs.res_id = :NEW.res_id;

    -- Yekun m?bl??
    :NEW.amount := (v_nights * v_room_price) + v_services_total;
END;
/



INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (201, 21225, 1001, TO_DATE('01/03/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (202, 21226, 1002, TO_DATE('01/01/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (203, 21227, 1003, TO_DATE('01/03/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (204, 21228, 1004, TO_DATE('01/09/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (205, 21229, 1005, TO_DATE('01/11/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (206, 21230, 1006, TO_DATE('01/15/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (207, 21231, 1007, TO_DATE('01/17/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (208, 21232, 1008, TO_DATE('01/20/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (209, 21233, 1009, TO_DATE('01/22/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (210, 21234, 1010, TO_DATE('01/30/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (211, 21235, 1011, TO_DATE('02/08/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (212, 21236, 1012, TO_DATE('02/15/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (213, 21237, 1013, TO_DATE('02/17/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (214, 21238, 1014, TO_DATE('02/20/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (215, 21239, 1015, TO_DATE('02/25/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (216, 21240, 1016, TO_DATE('03/10/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (217, 21241, 1017, TO_DATE('03/18/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (218, 21242, 1018, TO_DATE('03/30/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (219, 21243, 1019, TO_DATE('04/07/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (220, 21244, 1020, TO_DATE('04/10/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (221, 21245, 1021, TO_DATE('04/17/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (222, 21246, 1022, TO_DATE('04/20/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (223, 21247, 1023, TO_DATE('04/29/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (224, 21248, 1024, TO_DATE('05/10/2025','MM/DD/YYYY'));
INSERT INTO Invoice (Invoice_no, Customer_id, Res_id, Invoice_date) VALUES (225, 21249, 1025, TO_DATE('05/30/2025','MM/DD/YYYY'));


select * from invoice;

CREATE TABLE transactions (
    Trans_No         number NOT NULL primary key,
    Payment_Method            varchar(20),
    Payment_Date            date,
    Invoice_no            integer,
    
    FOREIGN key (invoice_no) references Invoice(invoice_no)
);
INSERT INTO transactions VALUES (9001, 'Card', TO_DATE('01/05/2025','MM/DD/YYYY'), 201);
INSERT INTO transactions VALUES (9002, 'Cash', TO_DATE('01/02/2025','MM/DD/YYYY'), 202);
INSERT INTO transactions VALUES (9003, 'Cash', TO_DATE('01/05/2025','MM/DD/YYYY'), 203);
INSERT INTO transactions VALUES (9004, 'Card', TO_DATE('01/12/2025','MM/DD/YYYY'), 204);
INSERT INTO transactions VALUES (9005, 'Card', TO_DATE('01/12/2025','MM/DD/YYYY'), 205);
INSERT INTO transactions VALUES (9006, 'Card', TO_DATE('01/16/2025','MM/DD/YYYY'), 206);
INSERT INTO transactions VALUES (9007, 'Cash', TO_DATE('01/18/2025','MM/DD/YYYY'), 207);
INSERT INTO transactions VALUES (9008, 'Card', TO_DATE('01/22/2025','MM/DD/YYYY'), 208);
INSERT INTO transactions VALUES (9009, 'Cash', TO_DATE('01/23/2025','MM/DD/YYYY'), 209);
INSERT INTO transactions VALUES (9010, 'Card', TO_DATE('01/31/2025','MM/DD/YYYY'), 210);
INSERT INTO transactions VALUES (9011, 'Card', TO_DATE('02/09/2025','MM/DD/YYYY'), 211);
INSERT INTO transactions VALUES (9012, 'Card', TO_DATE('02/17/2025','MM/DD/YYYY'), 213);
INSERT INTO transactions VALUES (9013, 'Card', TO_DATE('02/21/2025','MM/DD/YYYY'), 214);
INSERT INTO transactions VALUES (9014, 'Card', TO_DATE('02/26/2025','MM/DD/YYYY'), 215);
INSERT INTO transactions VALUES (9015, 'Card', TO_DATE('03/11/2025','MM/DD/YYYY'), 216);
INSERT INTO transactions VALUES (9016, 'Card', TO_DATE('03/20/2025','MM/DD/YYYY'), 217);
INSERT INTO transactions VALUES (9017, 'Cash', TO_DATE('03/31/2025','MM/DD/YYYY'), 218);
INSERT INTO transactions VALUES (9018, 'Card', TO_DATE('04/08/2025','MM/DD/YYYY'), 219);
INSERT INTO transactions VALUES (9019, 'Card', TO_DATE('04/11/2025','MM/DD/YYYY'), 220);
INSERT INTO transactions VALUES (9020, 'Card', TO_DATE('04/18/2025','MM/DD/YYYY'), 221);
INSERT INTO transactions VALUES (9021, 'Cash', TO_DATE('04/20/2025','MM/DD/YYYY'), 222);
INSERT INTO transactions VALUES (9022, 'Card', TO_DATE('05/10/2025','MM/DD/YYYY'), 224);
INSERT INTO transactions VALUES (9023, 'Cash', TO_DATE('05/31/2025','MM/DD/YYYY'), 225);
INSERT INTO transactions VALUES (9024, 'Card', TO_DATE('05/11/2025','MM/DD/YYYY'), 212);
INSERT INTO transactions VALUES (9025, 'Card', TO_DATE('03/18/2025','MM/DD/YYYY'), 223);
select * from transactions;



CREATE TABLE Satisfaction (
    satisfaction_id    NUMBER PRIMARY KEY,
    satisfaction_level NUMBER CHECK (satisfaction_level BETWEEN 1 AND 5),
    trans_no           NUMBER UNIQUE,
    FOREIGN KEY (trans_no) REFERENCES Transactions(trans_no)
);


INSERT INTO Satisfaction VALUES (1, 4, 9001);
INSERT INTO Satisfaction VALUES (2, 5, 9002);
INSERT INTO Satisfaction VALUES (3, 3, 9003);
INSERT INTO Satisfaction VALUES (4, 2, 9004);
INSERT INTO Satisfaction VALUES (5, 3, 9005);
INSERT INTO Satisfaction VALUES (6, 2, 9006);
INSERT INTO Satisfaction VALUES (7, 1, 9007);
INSERT INTO Satisfaction VALUES (8, 2, 9008);
INSERT INTO Satisfaction VALUES (9, 3, 9009);
INSERT INTO Satisfaction VALUES (10, 4, 9010);
INSERT INTO Satisfaction VALUES (11, 3, 9011);
INSERT INTO Satisfaction VALUES (12, 3, 9012);
INSERT INTO Satisfaction VALUES (13, 2, 9013);
INSERT INTO Satisfaction VALUES (14, 2, 9014);
INSERT INTO Satisfaction VALUES (15, 1, 9015);
INSERT INTO Satisfaction VALUES (16, 3, 9016);
INSERT INTO Satisfaction VALUES (17, 3, 9017);
INSERT INTO Satisfaction VALUES (18, 4, 9018);
INSERT INTO Satisfaction VALUES (19, 3, 9019);
INSERT INTO Satisfaction VALUES (20, 4, 9020);
INSERT INTO Satisfaction VALUES (21, 4, 9021);
INSERT INTO Satisfaction VALUES (22, 3, 9022);
INSERT INTO Satisfaction VALUES (23, 4, 9023);
INSERT INTO Satisfaction VALUES (24, 5, 9024);
INSERT INTO Satisfaction VALUES (25, 5, 9025);



COMMIT;

SELECT * FROM Satisfaction;

--- Customer Revenue Analysis
SELECT
    rs.customer_id,
    SUM(r.room_price) AS "Total Room Charges",
    SUM(s.service_cost) AS "Total Service Charges"
FROM
    room                r
    JOIN reservation         rs ON r.res_id = rs.res_id
    LEFT JOIN customer_services   cs ON cs.res_id = rs.res_id
    LEFT JOIN services            s ON s.service_id = cs.service_id
GROUP BY
    rs.customer_id;
--- Monthly Revenue & Reservation Trend Analysis
SELECT
    to_char(rs.check_in_date, 'MM') AS month,
    COUNT(DISTINCT rs.res_id) AS "Reservation Count",
    SUM(r.room_price) AS "Total Room",
    SUM(s.service_cost) AS "Total Service"
FROM
    room                r
    JOIN reservation         rs ON r.res_id = rs.res_id
    LEFT JOIN customer_services   cs ON cs.res_id = rs.res_id
    LEFT JOIN services            s ON s.service_id = cs.service_id
GROUP BY
    to_char(rs.check_in_date, 'MM')
ORDER BY month;
    
--- Customer Volume Analysis
SELECT
    COUNT(customer_id) AS no_of_customers,
    to_char(check_in_date, 'MM') AS month
FROM
    reservation
GROUP BY
    to_char(check_in_date, 'MM')
ORDER BY
    to_char(check_in_date, 'MM') ASC;
    
--- Final invoice amount including room and services
SELECT
    i.invoice_no,
    r.room_price + nvl(SUM(s.service_cost), 0) AS "Grand Total"
FROM
    invoice             i
    JOIN room                r ON r.res_id = i.res_id
    LEFT JOIN customer_services   cs ON cs.res_id = i.res_id
    LEFT JOIN services            s ON s.service_id = cs.service_id
GROUP BY
    i.invoice_no,
    r.room_price;

--- The Most Profitable Room
SELECT r.room_type,
       SUM(r.room_price) AS Total_Revenue
FROM room r
GROUP BY r.room_type
ORDER BY Total_Revenue DESC;

--- The Most Profitable of Services
SELECT s.service_type,
       SUM(s.service_cost) AS Total_Service_Revenue
FROM services s
JOIN customer_services cs ON s.service_id = cs.service_id
GROUP BY s.service_type
ORDER BY Total_Service_Revenue DESC;

--- How many booking process has done by each receptionist
SELECT e.full_name,
       COUNT(b.booking_id) AS Total_Bookings
FROM employee e
JOIN booking b ON e.employee_id = b.employee_id
WHERE e.position = 'Receptionist'
GROUP BY e.full_name;

--- Monthly total sales
SELECT
    to_char(t.payment_date, 'MM') AS month,
    SUM(r.room_price + nvl(s.service_cost, 0)) AS total_sales,
    SUM(r.room_price) AS total_room_charges,
    SUM(nvl(s.service_cost, 0)) AS total_service_charges
FROM
    transactions        t
    JOIN invoice             i ON t.invoice_no = i.invoice_no
    JOIN room                r ON r.res_id = i.res_id
    LEFT JOIN customer_services   cs ON cs.res_id = i.res_id
    LEFT JOIN services            s ON s.service_id = cs.service_id
GROUP BY
    to_char(t.payment_date, 'MM')
ORDER BY month;
--- Customers who hasn't used any services
SELECT c.customer_id, c.first_name, c.last_name
FROM customer c
WHERE NOT EXISTS (
    SELECT 1
    FROM reservation r
    JOIN customer_services cs ON r.res_id = cs.res_id
    WHERE r.customer_id = c.customer_id
);

--- Customers staying in the VIP rooms
SELECT DISTINCT c.customer_id, c.first_name, c.last_name,rm.room_type
FROM customer c
JOIN reservation r ON c.customer_id = r.customer_id
JOIN room rm ON rm.res_id = r.res_id
WHERE rm.room_price =
      (SELECT MAX(room_price) FROM room);

---Customer Satisfaction Trend Analysis

SELECT
    to_char(t.payment_date, 'MM') AS month,
    AVG(sf.satisfaction_level) AS avg_satisfaction
FROM
    satisfaction   sf
    JOIN transactions   t ON sf.trans_no = t.trans_no
GROUP BY
    to_char(t.payment_date, 'MM')
ORDER BY to_char(t.payment_date, 'MM') ASC;
