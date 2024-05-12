-- Verify: schemas/dashboard_public/tables/object_type_values/indexes/object_type_values_attr_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.object_type_values', 'object_type_values_attr_id_idx');
COMMIT;  

