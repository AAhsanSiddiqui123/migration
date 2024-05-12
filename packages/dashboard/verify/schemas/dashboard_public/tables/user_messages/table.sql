-- Verify: schemas/dashboard_public/tables/user_messages/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_messages');
COMMIT;  

