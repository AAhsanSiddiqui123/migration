-- Revert: schemas/dashboard_public/tables/organization_profile_variations/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations DROP COLUMN created_at;
ALTER TABLE "dashboard_public".organization_profile_variations DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".organization_profile_variations;

COMMIT;  

