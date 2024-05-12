-- Deploy: schemas/dashboard_public/tables/reward_payments/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_payments/table

BEGIN;

ALTER TABLE "dashboard_public".reward_payments ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".reward_payments ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".reward_payments
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".reward_payments (created_by);
CREATE INDEX ON "dashboard_public".reward_payments (updated_by);
COMMIT;
