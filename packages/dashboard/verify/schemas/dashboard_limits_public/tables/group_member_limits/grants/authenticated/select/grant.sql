-- Verify: schemas/dashboard_limits_public/tables/group_member_limits/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_limits_public.group_member_limits', 'select', 'authenticated');
COMMIT;  

