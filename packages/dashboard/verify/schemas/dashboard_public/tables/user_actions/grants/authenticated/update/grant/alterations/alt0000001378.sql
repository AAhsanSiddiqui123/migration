-- Verify: schemas/dashboard_public/tables/user_actions/grants/authenticated/update/grant/alterations/alt0000001378 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_actions', 'update', 'authenticated');
COMMIT;  

