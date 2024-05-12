-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table

BEGIN;

ALTER TABLE "dashboard_public".organization_profile_variations ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".organization_profile_variations ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".organization_profile_variations ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".organization_profile_variations ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".organization_profile_variations
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".organization_profile_variations (created_at);
CREATE INDEX ON "dashboard_public".organization_profile_variations (updated_at);
COMMIT;
