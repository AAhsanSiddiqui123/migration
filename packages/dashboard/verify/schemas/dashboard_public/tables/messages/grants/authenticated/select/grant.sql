-- Verify: schemas/dashboard_public/tables/messages/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.messages', 'select', 'authenticated');
COMMIT;  

