-- Verify: schemas/dashboard_limits_public/tables/group_member_limit_defaults/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_limits_public.group_member_limit_defaults', 'update', 'authenticated');
COMMIT;  

