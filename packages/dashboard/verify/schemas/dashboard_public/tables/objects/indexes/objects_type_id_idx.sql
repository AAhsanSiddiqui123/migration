-- Verify: schemas/dashboard_public/tables/objects/indexes/objects_type_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.objects', 'objects_type_id_idx');
COMMIT;  

