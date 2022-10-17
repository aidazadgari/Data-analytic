select * from passengers where survived = 1;
select * from passengers where sex = 'male';
select * from passengers where age > 55 ORDER BY age ASC;
select * from passengers where sex = 'male' and age > 55 and survived = 1;
select count(*) from passengers where sex = 'male' and age > 55 and survived = 1;
select count(*) as TotalMalePassengers from passengers where sex = 'male' and age > 55 and survived = 1;
select count(*) as 'Total Male Passengers' from passengers where sex = 'male' and age > 55 and survived = 1;    # spave between words using''
select * from passengers;
select pclass, sex from passengers;
select pclass as PassengerClass, sex as Gender from passengers;
select fare from passengers;
select round(sum(fare)) as Totalfare from passengers;
select round(avg(fare)) as Averagefare from passengers;
select round(max(fare)) as Maxfare from passengers;
select round(min(fare)) as Minfare from passengers where fare > 0 ;
select round(sum(fare)) as Totalfare from passengers where survived = 1;
select round(sum(fare)) as Totalfare from passengers where survived = 0;
select round(avg(fare)) as Averagefare from passengers where survived =1;

select round(sum(fare)) as Totalfare1 from passengers where pclass = 1;

select round(avg(fare)) as AverageFareForFirst from passengers where pclass =1;
select round(avg(fare)) as AverageFareForSecond from passengers where pclass =2;
select round(avg(fare)) as AverageFareForThird from passengers where pclass =3;

select pclass from passengers order by pclass ASC;
select pclass from passengers group by pclass order by pclass;

select pclass as PassengerClass,count(*) as TotalPassengerClass from passengers group by pclass order by pclass;
select pclass as PassengerClass, round(sum(fare)) as TotalFare from passengers group by pclass order by pclass;

select * from passengers;
select fare as Revenue,pclass, survived from passengers;
select avg(fare) as Revenue, pclass from passengers where survived = 0 group by pclass order by pclass;
