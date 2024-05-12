-- Verify: schemas/dashboard_public/tables/user_locations/table/alterations/alt0000001531 on pg

BEGIN;
SELECT verify_table('dashboard_public.user_locations');
COMMIT;  

