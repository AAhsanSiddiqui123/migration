-- Verify: schemas/dashboard_limits_public/tables/group_member_limit_defaults/table on pg

BEGIN;
SELECT verify_table('dashboard_limits_public.group_member_limit_defaults');
COMMIT;  

