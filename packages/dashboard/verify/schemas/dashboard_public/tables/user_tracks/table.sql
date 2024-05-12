-- Verify: schemas/dashboard_public/tables/user_tracks/table on pg

BEGIN;
SELECT verify_table('dashboard_public.user_tracks');
COMMIT;  

