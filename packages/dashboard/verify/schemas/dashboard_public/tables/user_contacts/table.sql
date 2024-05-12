-- Verify: schemas/dashboard_public/tables/user_contacts/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_contacts');
COMMIT;  

