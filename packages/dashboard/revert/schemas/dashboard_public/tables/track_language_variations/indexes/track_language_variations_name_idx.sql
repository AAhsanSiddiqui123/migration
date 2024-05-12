-- Revert: schemas/dashboard_public/tables/track_language_variations/indexes/track_language_variations_name_idx from pg

BEGIN;
DROP INDEX "dashboard_public".track_language_variations_name_idx;
COMMIT;  

