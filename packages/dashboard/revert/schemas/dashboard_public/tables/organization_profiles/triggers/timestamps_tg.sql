-- Revert: schemas/dashboard_public/tables/organization_profiles/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles DROP COLUMN created_at;
ALTER TABLE "dashboard_public".organization_profiles DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".organization_profiles;

COMMIT;  

