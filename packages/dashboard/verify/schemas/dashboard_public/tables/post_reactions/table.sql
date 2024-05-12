-- Verify: schemas/dashboard_public/tables/post_reactions/table on pg

BEGIN;
SELECT verify_table('dashboard_public.post_reactions');
COMMIT;  

