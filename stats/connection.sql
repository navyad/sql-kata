select * from pg_stat_activity where state = 'active';
select * from pg_stat_activity where state = 'idle';
select * from pg_stat_activity where state = 'idle in transaction';
select * from pg_stat_activity where state = 'idle in transaction (aborted)';

