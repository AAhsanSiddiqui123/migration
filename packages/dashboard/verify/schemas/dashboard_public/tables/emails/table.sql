-- Verify: schemas/dashboard_public/tables/emails/table on pg

BEGIN;
SELECT verify_table('dashboard_public.emails');
COMMIT;  

