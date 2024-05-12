-- Verify: schemas/dashboard_public/tables/post_reactions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.post_reactions', 'update', 'authenticated');
COMMIT;  

