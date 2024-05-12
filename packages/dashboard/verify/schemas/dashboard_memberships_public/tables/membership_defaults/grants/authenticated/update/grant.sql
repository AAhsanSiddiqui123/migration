-- Verify: schemas/dashboard_memberships_public/tables/membership_defaults/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.membership_defaults', 'update', 'authenticated');
COMMIT;  

