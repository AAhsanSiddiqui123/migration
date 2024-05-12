-- Verify: schemas/dashboard_public/tables/posts/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.posts', 'delete', 'authenticated');
COMMIT;  

