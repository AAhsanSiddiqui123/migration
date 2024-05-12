-- Verify: schemas/dashboard_public/tables/user_answers/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_answers', 'update', 'authenticated');
COMMIT;  

