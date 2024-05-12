-- Verify: schemas/dashboard_public/tables/emails/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.emails', 'insert', 'authenticated');
COMMIT;  

