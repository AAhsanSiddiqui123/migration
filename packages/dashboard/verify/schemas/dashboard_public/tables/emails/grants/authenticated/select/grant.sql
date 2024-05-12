-- Verify: schemas/dashboard_public/tables/emails/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.emails', 'select', 'authenticated');
COMMIT;  

