-- Verify: schemas/dashboard_public/tables/object_type_value_tracks/table on pg

BEGIN;
SELECT verify_table('dashboard_public.object_type_value_tracks');
COMMIT;  

