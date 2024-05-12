-- Revert: schemas/dashboard_public/tables/track_language_variations/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".track_language_variations DROP COLUMN created_at;
ALTER TABLE "dashboard_public".track_language_variations DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".track_language_variations;

COMMIT;  

