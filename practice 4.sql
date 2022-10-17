SELECT 
  paxid,
  sex as Gender,
  survived,
CASE
        WHEN embarked = 'C' THEN 'Cherbourg'
        WHEN embarked = 'Q' THEN 'Qeenstown'
        WHEN embarked = 'S' THEN 'SouthHampthon'
        ELSE 'Unknown'
    END AS embarktionPoint,
CASE
when pclass = 1 then 'FirstClass'
when pclass = 2 then 'SecondClass'
when pclass = 3 then 'ThirdClass'
else 'Unknown'
end as PAXCLASS,
CASE
        WHEN survived = 1 THEN 'survivor'
        ELSE 'Non-Survivors'
    END AS SurvivolStatus
FROM
    passengers