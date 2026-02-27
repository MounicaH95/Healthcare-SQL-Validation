create table members(member_id int primary key, member_name varchar(50), dob date, plan_type varchar(20));
create table claims(claim_id int primary key, member_id int,claim_amount decimal(10,2), claim_status varchar(20),foreign key(member_id) references members(member_id));
