-- Verify: schemas/dashboard_public/tables/objects/indexes/objects_track_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.objects', 'objects_track_id_idx');
COMMIT;  

