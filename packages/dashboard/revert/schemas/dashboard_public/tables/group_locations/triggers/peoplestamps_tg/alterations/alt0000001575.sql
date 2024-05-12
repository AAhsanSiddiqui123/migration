-- Revert: schemas/dashboard_public/tables/group_locations/triggers/peoplestamps_tg/alterations/alt0000001575 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations DROP COLUMN created_by;
ALTER TABLE "dashboard_public".group_locations DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".group_locations;


COMMIT;  

