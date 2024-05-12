-- Revert: schemas/dashboard_public/tables/track_groups/triggers/_000000000_ensure_insert_track_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_track_id ON "dashboard_public".track_groups;
COMMIT;  

