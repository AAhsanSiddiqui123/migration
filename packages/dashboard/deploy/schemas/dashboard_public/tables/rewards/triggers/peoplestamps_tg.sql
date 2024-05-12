-- Deploy: schemas/dashboard_public/tables/rewards/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table

BEGIN;

ALTER TABLE "dashboard_public".rewards ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".rewards ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".rewards
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".rewards (created_by);
CREATE INDEX ON "dashboard_public".rewards (updated_by);
COMMIT;
