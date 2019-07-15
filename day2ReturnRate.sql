/*
create table users(userid int, created_at date);
create table logon_events(userid int, logon_date int);


insert into users values(1, '2018-12-01');
insert into users values(2, '2018-12-31');
insert into users values(3, '2018-12-31');
insert into logon_events values(1, '2018-12-02');
insert into logon_events values(1, '2018-12-03');
insert into logon_events values(2, '2019-01-02');
insert into logon_events values(3,'2019-01-05');
*/

select count(distinct secondDay.userid)*100.0/count(distinct total.userid) porc
from 
(select  distinct user_DB.userid 
from logon_events le,
users user_DB where le.userid=user_DB.userid and Cast ((
    JulianDay(le.logon_date) - JulianDay(user_DB.created_at)
) As Integer)==2 ) secondDay,
(select distinct userid from users) total
