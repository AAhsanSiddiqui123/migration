-- Verify: schemas/dashboard_public/tables/messages/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.messages', 'delete', 'authenticated');
COMMIT;  

