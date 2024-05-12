-- Revert: schemas/dashboard_public/tables/track_language_variations/indexes/track_language_variations_track_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".track_language_variations_track_id_idx;
COMMIT;  

