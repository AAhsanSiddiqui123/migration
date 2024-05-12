-- Verify: schemas/dashboard_public/tables/messages/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.messages', 'update', 'authenticated');
COMMIT;  

