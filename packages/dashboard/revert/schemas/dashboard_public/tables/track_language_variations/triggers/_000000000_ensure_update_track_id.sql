-- Revert: schemas/dashboard_public/tables/track_language_variations/triggers/_000000000_ensure_update_track_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_track_id ON "dashboard_public".track_language_variations;
COMMIT;  

