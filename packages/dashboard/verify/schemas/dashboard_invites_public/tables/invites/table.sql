-- Verify: schemas/dashboard_invites_public/tables/invites/table on pg

BEGIN;
SELECT verify_table('dashboard_invites_public.invites');
COMMIT;  

