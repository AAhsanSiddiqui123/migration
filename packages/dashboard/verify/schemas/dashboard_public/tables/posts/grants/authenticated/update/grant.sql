-- Verify: schemas/dashboard_public/tables/posts/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.posts', 'update', 'authenticated');
COMMIT;  

