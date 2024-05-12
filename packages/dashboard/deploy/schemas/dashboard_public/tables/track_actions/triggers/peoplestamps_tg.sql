-- Deploy: schemas/dashboard_public/tables/track_actions/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;

ALTER TABLE "dashboard_public".track_actions ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".track_actions ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".track_actions
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".track_actions (created_by);
CREATE INDEX ON "dashboard_public".track_actions (updated_by);
COMMIT;
