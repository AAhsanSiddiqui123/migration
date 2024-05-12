-- Verify: schemas/dashboard_public/tables/object_attributes/indexes/object_attributes_is_private_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.object_attributes', 'object_attributes_is_private_idx');
COMMIT;  

