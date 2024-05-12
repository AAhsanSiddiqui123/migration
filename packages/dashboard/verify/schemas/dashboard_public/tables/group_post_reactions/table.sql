-- Verify: schemas/dashboard_public/tables/group_post_reactions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.group_post_reactions');
COMMIT;  

