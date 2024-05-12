-- Deploy: schemas/dashboard_public/tables/organization_profiles/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table

BEGIN;

ALTER TABLE "dashboard_public".organization_profiles ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".organization_profiles ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".organization_profiles
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".organization_profiles (created_by);
CREATE INDEX ON "dashboard_public".organization_profiles (updated_by);
COMMIT;
