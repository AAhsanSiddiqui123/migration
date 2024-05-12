-- Verify: schemas/dashboard_public/tables/objects/indexes/objects_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.objects', 'objects_owner_id_idx');
COMMIT;  

