-- Verify: schemas/dashboard_public/tables/object_type_language_variations/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.object_type_language_variations', 'update', 'authenticated');
COMMIT;  

