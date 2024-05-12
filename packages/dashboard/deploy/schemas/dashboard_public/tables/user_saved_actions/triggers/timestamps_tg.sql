-- Deploy: schemas/dashboard_public/tables/user_saved_actions/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_saved_actions/table

BEGIN;

ALTER TABLE "dashboard_public".user_saved_actions ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_saved_actions ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".user_saved_actions ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_saved_actions ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".user_saved_actions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".user_saved_actions (created_at);
CREATE INDEX ON "dashboard_public".user_saved_actions (updated_at);
COMMIT;
