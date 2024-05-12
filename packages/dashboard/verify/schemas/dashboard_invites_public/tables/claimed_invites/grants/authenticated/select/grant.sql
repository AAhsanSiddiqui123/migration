-- Verify: schemas/dashboard_invites_public/tables/claimed_invites/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_invites_public.claimed_invites', 'select', 'authenticated');
COMMIT;  

