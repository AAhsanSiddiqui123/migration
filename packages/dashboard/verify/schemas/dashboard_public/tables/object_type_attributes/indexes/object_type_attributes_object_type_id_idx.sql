-- Verify: schemas/dashboard_public/tables/object_type_attributes/indexes/object_type_attributes_object_type_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.object_type_attributes', 'object_type_attributes_object_type_id_idx');
COMMIT;  

