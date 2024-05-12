-- Verify: schemas/dashboard_public/tables/object_records/indexes/object_records_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.object_records', 'object_records_owner_id_idx');
COMMIT;  

