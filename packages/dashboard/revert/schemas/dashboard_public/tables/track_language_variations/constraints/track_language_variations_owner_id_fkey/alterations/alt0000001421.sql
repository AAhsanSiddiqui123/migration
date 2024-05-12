-- Revert: schemas/dashboard_public/tables/track_language_variations/constraints/track_language_variations_owner_id_fkey/alterations/alt0000001421 from pg

BEGIN;
COMMENT ON CONSTRAINT track_language_variations_owner_id_fkey ON "dashboard_public".track_language_variations IS NULL;
COMMIT;  

