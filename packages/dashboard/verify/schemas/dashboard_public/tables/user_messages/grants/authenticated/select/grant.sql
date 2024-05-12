-- Verify: schemas/dashboard_public/tables/user_messages/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_messages', 'select', 'authenticated');
COMMIT;  

