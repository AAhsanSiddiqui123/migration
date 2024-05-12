-- Deploy: schemas/dashboard_public/tables/rewards/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table

BEGIN;

ALTER TABLE "dashboard_public".rewards ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".rewards ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".rewards ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".rewards ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".rewards
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".rewards (created_at);
CREATE INDEX ON "dashboard_public".rewards (updated_at);
COMMIT;
