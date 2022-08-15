CREATE TABLE public.customer
(
    customer_id integer NOT NULL,
    name character varying(255) COLLATE pg_catalog."default",
    dob varchar(10),
    CONSTRAINT customer_pkey PRIMARY KEY(customer_id)
       
);

INSERT INTO customer VALUES(1,'ann','1/31/2000');
INSERT INTO customer VALUES(2,'bob','3/31/2002');
INSERT INTO customer VALUES(3,'mary','1/31/2003');
INSERT INTO customer VALUES(4,'jim','5/30/2001');

SELECT * FROM customer;


CREATE TABLE public.policy
(
    policy_id integer NOT NULL,
    policy_name character varying(255) COLLATE pg_catalog."default",
    description character varying(255) COLLATE pg_catalog."default",
    no_of_payment integer,
    amount integer,
    CONSTRAINT policy_pkey PRIMARY KEY(policy_id)   
    
);

INSERT INTO policy VALUES(123,'car','accident',6,10000);
INSERT INTO policy VALUES(120,'home','fire',12,1000000);
INSERT INTO policy VALUES(121,'life','good',15,500000);
INSERT INTO policy VALUES(122,'health','premium',9,150);

SELECT * FROM policy;

CREATE TABLE PUBLIC.customer_policy
(
    CONSTRAINT customer_policy_fkey FOREIGN KEY(customer_id)
    REFERENCES public.customer(customer_id),
    
    CONSTRAINT customer_policy_fkey FOREIGN KEY(policy_id)
    REFERENCES public.policy(policy_id),
    
    registration_date date  
        
);

INSERT INTO customer_policy VALUES(2/3/2019);
INSERT INTO customer_policy VALUES(3/2/2018);
INSERT INTO customer_policy VALUES(3/4/2017);
INSERT INTO customer_policy VALUES(5/2/2020);

SELECT * FROM customer_policy;


SELECT * FROM customer AS c full JOIN policy AS p ON c.customer_id=p.policy_id WHERE name like 'j%';

SELECT * FROM policy WHERE amount<=200;

SELECT * FROM policy WHERE policy_id=120 or amount =10000







