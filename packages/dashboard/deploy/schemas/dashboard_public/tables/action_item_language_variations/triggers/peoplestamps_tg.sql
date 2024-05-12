-- Deploy: schemas/dashboard_public/tables/action_item_language_variations/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_language_variations ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".action_item_language_variations ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".action_item_language_variations
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".action_item_language_variations (created_by);
CREATE INDEX ON "dashboard_public".action_item_language_variations (updated_by);
COMMIT;
