-- Revert: schemas/dashboard_public/tables/organization_profiles/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles DROP COLUMN created_by;
ALTER TABLE "dashboard_public".organization_profiles DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".organization_profiles;


COMMIT;  

