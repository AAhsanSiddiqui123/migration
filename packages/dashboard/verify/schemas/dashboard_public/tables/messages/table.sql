-- Verify: schemas/dashboard_public/tables/messages/table on pg

BEGIN;
SELECT verify_table('dashboard_public.messages');
COMMIT;  

