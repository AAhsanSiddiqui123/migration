-- Verify: schemas/dashboard_public/tables/user_actions/grants/authenticated/insert/grant/alterations/alt0000000963 on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.user_actions', 'insert', 'authenticated');
COMMIT;  

