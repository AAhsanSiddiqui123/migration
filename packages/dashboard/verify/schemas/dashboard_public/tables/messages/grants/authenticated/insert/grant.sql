-- Verify: schemas/dashboard_public/tables/messages/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.messages', 'insert', 'authenticated');
COMMIT;  

