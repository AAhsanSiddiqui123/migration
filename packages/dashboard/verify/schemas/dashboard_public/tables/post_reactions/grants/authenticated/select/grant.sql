-- Verify: schemas/dashboard_public/tables/post_reactions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.post_reactions', 'select', 'authenticated');
COMMIT;  

