-- Verify: schemas/dashboard_public/tables/user_messages/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_messages', 'delete', 'authenticated');
COMMIT;  

