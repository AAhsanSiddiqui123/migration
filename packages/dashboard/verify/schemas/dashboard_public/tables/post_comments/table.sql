-- Verify: schemas/dashboard_public/tables/post_comments/table on pg

BEGIN;
SELECT verify_table('dashboard_public.post_comments');
COMMIT;  

