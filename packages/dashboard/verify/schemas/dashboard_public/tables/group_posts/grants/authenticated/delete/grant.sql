-- Verify: schemas/dashboard_public/tables/group_posts/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_posts', 'delete', 'authenticated');
COMMIT;  

