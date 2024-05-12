-- Verify: schemas/dashboard_public/tables/user_contacts/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_contacts', 'insert', 'authenticated');
COMMIT;  

