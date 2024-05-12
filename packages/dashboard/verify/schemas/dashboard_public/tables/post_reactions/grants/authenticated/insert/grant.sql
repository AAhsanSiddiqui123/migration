-- Verify: schemas/dashboard_public/tables/post_reactions/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.post_reactions', 'insert', 'authenticated');
COMMIT;  

