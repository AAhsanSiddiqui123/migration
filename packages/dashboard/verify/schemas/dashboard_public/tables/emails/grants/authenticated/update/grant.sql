-- Verify: schemas/dashboard_public/tables/emails/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.emails', 'update', 'authenticated');
COMMIT;  

