-- Verify: schemas/dashboard_public/tables/track_groups/triggers/_000000000_ensure_update_track_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_update_track_id');
COMMIT;  

