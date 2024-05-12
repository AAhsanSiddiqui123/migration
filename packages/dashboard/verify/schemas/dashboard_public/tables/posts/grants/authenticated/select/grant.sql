-- Verify: schemas/dashboard_public/tables/posts/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.posts', 'select', 'authenticated');
COMMIT;  

