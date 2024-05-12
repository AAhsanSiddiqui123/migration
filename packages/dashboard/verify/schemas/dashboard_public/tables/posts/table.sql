-- Verify: schemas/dashboard_public/tables/posts/table on pg

BEGIN;
SELECT verify_table('dashboard_public.posts');
COMMIT;  

