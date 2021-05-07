SELECT table1.phone_number, table1.user_source, table2.username, table3.gstin
FROM profile as table1
INNER JOIN user as table2
ON table2.id = table1.user_id and table1.phone_number='8495830644'
INNER join gstins as table3
ON table3.associated_user_id = table1.id
