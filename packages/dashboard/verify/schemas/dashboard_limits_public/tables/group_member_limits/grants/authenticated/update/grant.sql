-- Verify: schemas/dashboard_limits_public/tables/group_member_limits/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_limits_public.group_member_limits', 'update', 'authenticated');
COMMIT;  

