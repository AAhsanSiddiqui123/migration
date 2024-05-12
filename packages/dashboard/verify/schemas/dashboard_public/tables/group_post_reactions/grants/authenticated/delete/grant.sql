-- Verify: schemas/dashboard_public/tables/group_post_reactions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_post_reactions', 'delete', 'authenticated');
COMMIT;  

