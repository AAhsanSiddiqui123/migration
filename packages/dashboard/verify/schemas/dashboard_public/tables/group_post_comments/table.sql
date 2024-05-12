-- Verify: schemas/dashboard_public/tables/group_post_comments/table on pg

BEGIN;
SELECT verify_table('dashboard_public.group_post_comments');
COMMIT;  

