-- Deploy: schemas/dashboard_public/tables/tags/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tags/table

BEGIN;

ALTER TABLE "dashboard_public".tags ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".tags ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".tags ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".tags ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".tags
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".tags (created_at);
CREATE INDEX ON "dashboard_public".tags (updated_at);
COMMIT;
