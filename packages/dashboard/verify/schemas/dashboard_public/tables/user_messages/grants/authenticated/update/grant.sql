-- Verify: schemas/dashboard_public/tables/user_messages/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_messages', 'update', 'authenticated');
COMMIT;  

