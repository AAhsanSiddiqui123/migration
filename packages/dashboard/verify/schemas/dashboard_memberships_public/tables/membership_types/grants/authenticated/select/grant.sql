-- Verify: schemas/dashboard_memberships_public/tables/membership_types/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.membership_types', 'select', 'authenticated');
COMMIT;  

