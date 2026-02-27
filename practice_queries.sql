Select * from members where plan_type='Medicaid';

select member_name,plan_type from members;

select member_id from members where plan_type='Medicare';

Select * from claims where member_id=2;

select * from claims where claim_amount between 100 and 600;

select * from claims where claim_status not in ('Approved','Pending');

