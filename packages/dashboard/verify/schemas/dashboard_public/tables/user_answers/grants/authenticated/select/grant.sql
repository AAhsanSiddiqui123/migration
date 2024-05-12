-- Verify: schemas/dashboard_public/tables/user_answers/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_answers', 'select', 'authenticated');
COMMIT;  

