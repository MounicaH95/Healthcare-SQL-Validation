Select * from members where plan_type='Medicaid';

select member_name,plan_type from members;

select member_id from members where plan_type='Medicare';

Select * from claims where member_id=2;

select * from claims where claim_amount between 100 and 600;

select * from claims where claim_status not in ('Approved','Pending');

-- Day 4 Join practice

-- Claims with member details
SELECT c.claim_id,
       m.member_name,
       c.claim_amount
FROM claims c
JOIN members m
ON c.member_id = m.member_id;

-- Find claims without valid member

SELECT c.claim_id,
       c.member_id
FROM claims c
LEFT JOIN members m
ON c.member_id = m.member_id
WHERE m.member_id IS NULL;

-- Denied commercial claims

SELECT c.*
FROM claims c
JOIN members m
ON c.member_id = m.member_id
WHERE m.plan_type = 'Commercial'
AND c.claim_status='Denied';

-- Day 5 Orphan record validation
SELECT c.claim_id,
       c.member_id
FROM claims c
LEFT JOIN members m
ON c.member_id = m.member_id
WHERE m.member_id IS NULL;

-- Validation: Find members with no claims
SELECT m.member_name
FROM members m
LEFT JOIN claims c
ON m.member_id = c.member_id
WHERE c.claim_id IS NULL;