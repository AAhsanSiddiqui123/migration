-- Deploy: schemas/dashboard_public/tables/goal_explanations/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table

BEGIN;

ALTER TABLE "dashboard_public".goal_explanations ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".goal_explanations ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".goal_explanations
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".goal_explanations (created_by);
CREATE INDEX ON "dashboard_public".goal_explanations (updated_by);
COMMIT;
