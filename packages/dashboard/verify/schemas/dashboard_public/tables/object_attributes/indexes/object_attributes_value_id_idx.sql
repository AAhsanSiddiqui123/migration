-- Verify: schemas/dashboard_public/tables/object_attributes/indexes/object_attributes_value_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.object_attributes', 'object_attributes_value_id_idx');
COMMIT;  

