-- Verify: schemas/dashboard_public/tables/group_posts/table on pg

BEGIN;
SELECT verify_table('dashboard_public.group_posts');
COMMIT;  

