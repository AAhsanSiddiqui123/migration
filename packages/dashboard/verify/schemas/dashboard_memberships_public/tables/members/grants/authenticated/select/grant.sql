-- Verify: schemas/dashboard_memberships_public/tables/members/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_memberships_public.members', 'select', 'authenticated');
COMMIT;  

