-- Verify: schemas/dashboard_memberships_public/tables/membership_defaults/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.membership_defaults');
COMMIT;  

