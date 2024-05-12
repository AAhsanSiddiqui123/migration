-- Deploy: schemas/dashboard_public/tables/impacts_conditions/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".impacts_conditions ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".impacts_conditions
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".impacts_conditions (created_by);
CREATE INDEX ON "dashboard_public".impacts_conditions (updated_by);
COMMIT;
