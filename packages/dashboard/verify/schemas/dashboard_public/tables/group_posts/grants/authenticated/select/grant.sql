-- Verify: schemas/dashboard_public/tables/group_posts/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.group_posts', 'select', 'authenticated');
COMMIT;  

