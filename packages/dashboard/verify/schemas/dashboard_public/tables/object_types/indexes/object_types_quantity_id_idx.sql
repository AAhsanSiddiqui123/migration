-- Verify: schemas/dashboard_public/tables/object_types/indexes/object_types_quantity_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.object_types', 'object_types_quantity_id_idx');
COMMIT;  

