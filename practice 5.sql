# join
select paxId from passengers;   
select * from paxnames;
select * from passengers JOIN paxnames ON passengers.paxId = paxnames.paxId;
select passengers.paxId, pname,sex, age from passengers JOIN paxnames ON passengers.paxId = paxnames.paxId;
