-- Verify: schemas/dashboard_public/tables/tracks/table on pg

BEGIN;
SELECT verify_table('dashboard_public.tracks');
COMMIT;  

