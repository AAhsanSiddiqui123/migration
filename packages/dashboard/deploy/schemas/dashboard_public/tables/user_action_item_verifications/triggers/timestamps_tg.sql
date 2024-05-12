-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_item_verifications ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_action_item_verifications ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".user_action_item_verifications ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".user_action_item_verifications ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".user_action_item_verifications
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".user_action_item_verifications (created_at);
CREATE INDEX ON "dashboard_public".user_action_item_verifications (updated_at);
COMMIT;
