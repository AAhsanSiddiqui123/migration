-- Verify: schemas/dashboard_public/tables/group_post_reactions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_post_reactions', 'select', 'authenticated');
COMMIT;  

