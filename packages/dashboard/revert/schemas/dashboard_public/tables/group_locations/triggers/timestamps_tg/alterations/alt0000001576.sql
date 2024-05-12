-- Revert: schemas/dashboard_public/tables/group_locations/triggers/timestamps_tg/alterations/alt0000001576 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations DROP COLUMN created_at;
ALTER TABLE "dashboard_public".group_locations DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".group_locations;

COMMIT;  

