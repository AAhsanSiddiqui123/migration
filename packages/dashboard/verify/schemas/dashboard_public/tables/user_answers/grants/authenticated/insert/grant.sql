-- Verify: schemas/dashboard_public/tables/user_answers/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_answers', 'insert', 'authenticated');
COMMIT;  

