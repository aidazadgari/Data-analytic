select * from titanic;
select pid, pclass,name from titanic;
select name, pclass,pid from titanic;
select pclass from titanic;
select pclass as PassengerClass from titanic; # aliasing a column name, rename the output not the database
select name as PassengerName from titanic; 
SELECT 
    pclass AS PassengerClass, name AS PassengerName, pid
FROM
    titanic
WHERE
    pid < 40
ORDER BY pid DESC;
SELECT pclass AS PassengerClass, name AS PassengerName, pid FROM titanic WHERE pid < 40 ORDER BY PassengerClass ASC, pid DESC;
SELECT pclass AS PassengerClass, name AS PassengerName, pid, gender FROM titanic WHERE gender = 'female' and pid between 1 and 100 ORDER BY PassengerClass ASC, pid DESC;
/* 1 - Retrieve all the male survivors (1 means they survived)*/
SELECT pclass AS PassengerClass, name AS PassengerName, pid, gender, survived FROM titanic WHERE gender = 'male' and survived = 1;

/* 2- Retrieve all the female victims (0 means they did not survived) below the age 40 */
SELECT pclass AS PassengerClass, name AS PassengerName, pid, gender, survived, age FROM titanic WHERE gender = 'female' and survived = 0 and age between 0 and 40 ORDER BY age ASC;
