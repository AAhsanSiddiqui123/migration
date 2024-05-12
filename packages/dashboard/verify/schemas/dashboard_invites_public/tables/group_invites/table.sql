-- Verify: schemas/dashboard_invites_public/tables/group_invites/table on pg

BEGIN;
SELECT verify_table('dashboard_invites_public.group_invites');
COMMIT;  

