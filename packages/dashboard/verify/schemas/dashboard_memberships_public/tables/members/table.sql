-- Verify: schemas/dashboard_memberships_public/tables/members/table on pg

BEGIN;
SELECT verify_table('dashboard_memberships_public.members');
COMMIT;  

