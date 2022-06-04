CREATE TABLE fruits (
        fruit_name VARCHAR2(100),
        color VARCHAR2(20)
);

INSERT INTO fruits(fruit_name,color) VALUES('Apple','Red');
INSERT INTO fruits(fruit_name,color) VALUES('Apple','Red');

commit;

select * from fruits;


delete from fruits a where (fruit_name,color) in ( 
select fruit_name,color from fruits a group by fruit_name, color having count(1) > 1)
and rownum  < (select count(1)
                from fruits c  
                where c.fruit_name = a.fruit_name
                and c.color=a.color);
                
                
commit;

select * from fruits;