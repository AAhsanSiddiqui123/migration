-- Deploy: schemas/dashboard_public/tables/messages/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table

BEGIN;

ALTER TABLE "dashboard_public".messages ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".messages ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".messages ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".messages ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".messages
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".messages (created_at);
CREATE INDEX ON "dashboard_public".messages (updated_at);
COMMIT;
