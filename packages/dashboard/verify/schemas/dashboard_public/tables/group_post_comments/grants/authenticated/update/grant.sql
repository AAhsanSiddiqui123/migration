-- Verify: schemas/dashboard_public/tables/group_post_comments/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_post_comments', 'update', 'authenticated');
COMMIT;  

