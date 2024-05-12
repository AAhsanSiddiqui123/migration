-- Deploy: schemas/dashboard_public/tables/action_item_locations/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_locations ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".action_item_locations ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".action_item_locations ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".action_item_locations ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".action_item_locations
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".action_item_locations (created_at);
CREATE INDEX ON "dashboard_public".action_item_locations (updated_at);
COMMIT;
