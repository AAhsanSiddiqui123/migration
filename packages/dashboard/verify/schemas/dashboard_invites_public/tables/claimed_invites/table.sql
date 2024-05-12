-- Verify: schemas/dashboard_invites_public/tables/claimed_invites/table on pg

BEGIN;
SELECT verify_table('dashboard_invites_public.claimed_invites');
COMMIT;  

