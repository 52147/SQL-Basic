-- create 2 table and insert value
CREATE TABLE [dbo].[Book] (
    [id]   INT          IDENTITY (1, 1) NOT NULL,
    [book] VARCHAR (50) NULL,
    [name] VARCHAR (50) NULL,
    CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [dbo].[Author] (
    [id]   INT           IDENTITY (1, 1) NOT NULL,
    [name] NVARCHAR (50) NULL,
    CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED ([id] ASC)
);

insert into Author VALUES ('andy');
insert into Author VALUES ('san');
insert into Author VALUES ('mandy');

insert into Book values ('flower', 'andy')
insert into Book values ('egg', 'san')
insert into Book values ('water', 'ann')
insert into Book values ('window', 'marry')

-- Interview Question: Find difference between two tables
SELECT TOP (1000)
    [id]
      , [book]
      , [name]
FROM [master].[dbo].[Book]
select *
from author

-- 1. Find the row in one table but not in another: not exists, left join ...where ...is not null, not in
select *
from Author a
where not exists(
    select *
from book b
where a.name = b.name
  )

select *
from Book b
where not exists(
    select *
from author a
where b.name = a.name
  )


select *
from book b left join author a on a.name = b.name
where a.name is null


select *
from author a
where name not in(
    select name
from 
  )

select *
from book b
where name not in(
    select name
from author a
  )

-- 2. find rows that are in neither Table A nor Table B: union all than count 1

SELECT name
FROM (
        SELECT name
        FROM author
    UNION ALL
        SELECT name
        FROM book
) AS Combined
GROUP BY name
HAVING COUNT(*) = 1;


-- 3. find the row that in the table 1 and table 2 : 
-- 3.1 union all than count 2
SELECT name
FROM (
        SELECT name
        FROM author
    UNION ALL
        SELECT name
        FROM book
) AS Combined
GROUP BY name
HAVING COUNT(*) = 2;

-- 3.2 inner join is the best way cause we do not need to remove the duplicate by using group by
select b.name
from author a inner join book b on a.name = b.name