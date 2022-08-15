--CREATE TABLE public.video
--(
--    video_id integer UNIQUE NOT NULL,
--    title character varying(255) COLLATE pg_catalog."default",
--    time varchar(5),
--    url character varying(255) COLLATE pg_catalog."default",
--    CONSTRAINT video_pkey PRIMARY KEY(video_id)
    
--);

--INSERT INTO VIDEO VALUES(1,'Big O Notation','19:33','https://www.youtube.com/watch?v=uHjPTUpQOAk&list=WL&index=2');
--INSERT INTO VIDEO VALUES(2,'What is MySQL?','9:30','https://www.youtube.com/watch?v=UO-yT7Ugnls&list=PLvrviaQ6IYduzA-vwufqpq1s0-Vfd7IXb&index=18&t=22s');
--INSERT INTO VIDEO VALUES(3,'What is Machine Learning?','5:22','https://www.youtube.com/watch?v=HcqpanDadyQ');

--select * from video

--CREATE TABLE public.review
--(
--    user_id integer,
--    user_name character varying(255) COLLATE pg_catalog."default",
--    rating integer,
--    review character varying(255) COLLATE pg_catalog."default",
--    CONSTRAINT review_pkey PRIMARY KEY(user_id)
    --CONSTRAINT review_fkey FOREIGN KEY(video_id)
    --REFERENCES public.video(video_id)MATCH SIMPLE

--);

--INSERT INTO REVIEW VALUES(1,'Mary',5,'great!');
--INSERT INTO REVIEW VALUES(2,'Ann',4,'alright');
--INSERT INTO REVIEW VALUES(3,'david',3,'good');

--select * from review

--SELECT * FROM video AS v JOIN review AS r ON r.user_id=v.video_id