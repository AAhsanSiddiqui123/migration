-- Verify: schemas/dashboard_public/tables/track_groups/indexes/track_groups_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.track_groups', 'track_groups_owner_id_idx');
COMMIT;  

