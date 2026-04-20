update cartoon set character_role='sidekict' where id=3;

INSERT INTO cartoon 
(name,email,age,cartoon,character_role,cartoon_rating,producer_company,net_worth,episodes,isActive,launch_date,country)
VALUES ('vilgax','vilgax@gmail.com',100,'Ben10','villian',8.5,'Cartoon Network',200000,80,true,'2005-12-27','USA');

delete from cartoon where id BETWEEN 22 and 36;

update cartoon set genre='game' where id between 23 and 37;
