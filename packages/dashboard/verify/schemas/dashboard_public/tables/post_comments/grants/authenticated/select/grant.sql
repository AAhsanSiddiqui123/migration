-- Verify: schemas/dashboard_public/tables/post_comments/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.post_comments', 'select', 'authenticated');
COMMIT;  

