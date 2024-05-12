-- Verify: schemas/dashboard_public/tables/posts/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.posts', 'insert', 'authenticated');
COMMIT;  

