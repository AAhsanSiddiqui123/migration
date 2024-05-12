-- Verify: schemas/dashboard_invites_public/tables/invites/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_invites_public.invites', 'update', 'authenticated');
COMMIT;  

