-- Deploy: schemas/dashboard_public/tables/user_action_items/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_items ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_action_items ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".user_action_items ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_action_items ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".user_action_items
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".user_action_items (created_at);
CREATE INDEX ON "dashboard_public".user_action_items (updated_at);
COMMIT;
