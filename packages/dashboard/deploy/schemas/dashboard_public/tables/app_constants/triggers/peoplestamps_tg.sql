-- Deploy: schemas/dashboard_public/tables/app_constants/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;

ALTER TABLE "dashboard_public".app_constants ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".app_constants ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".app_constants
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".app_constants (created_by);
CREATE INDEX ON "dashboard_public".app_constants (updated_by);
COMMIT;
