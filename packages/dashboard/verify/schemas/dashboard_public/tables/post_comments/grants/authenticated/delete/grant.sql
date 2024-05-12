-- Verify: schemas/dashboard_public/tables/post_comments/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.post_comments', 'delete', 'authenticated');
COMMIT;  

