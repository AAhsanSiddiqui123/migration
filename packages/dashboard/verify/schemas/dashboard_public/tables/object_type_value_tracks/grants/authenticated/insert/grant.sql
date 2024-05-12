-- Verify: schemas/dashboard_public/tables/object_type_value_tracks/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_type_value_tracks', 'insert', 'authenticated');
COMMIT;  

