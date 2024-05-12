-- Deploy: schemas/dashboard_public/tables/reward_payments/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table

BEGIN;

ALTER TABLE "dashboard_public".reward_payments ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".reward_payments ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".reward_payments ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".reward_payments ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".reward_payments
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".reward_payments (created_at);
CREATE INDEX ON "dashboard_public".reward_payments (updated_at);
COMMIT;
