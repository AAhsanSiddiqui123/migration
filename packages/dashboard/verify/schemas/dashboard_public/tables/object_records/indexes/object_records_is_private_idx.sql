-- Verify: schemas/dashboard_public/tables/object_records/indexes/object_records_is_private_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.object_records', 'object_records_is_private_idx');
COMMIT;  

