-- Verify: schemas/dashboard_public/tables/group_post_comments/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_post_comments', 'delete', 'authenticated');
COMMIT;  

