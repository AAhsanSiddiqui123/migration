-- Verify: schemas/dashboard_invites_public/tables/invites/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_invites_public.invites', 'delete', 'authenticated');
COMMIT;  

