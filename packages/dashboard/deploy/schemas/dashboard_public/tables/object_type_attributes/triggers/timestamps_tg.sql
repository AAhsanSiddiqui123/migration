-- Deploy: schemas/dashboard_public/tables/object_type_attributes/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_attributes ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".object_type_attributes ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".object_type_attributes ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".object_type_attributes ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".object_type_attributes
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".object_type_attributes (created_at);
CREATE INDEX ON "dashboard_public".object_type_attributes (updated_at);
COMMIT;
