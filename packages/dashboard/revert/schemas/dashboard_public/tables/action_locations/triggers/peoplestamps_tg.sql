-- Revert: schemas/dashboard_public/tables/action_locations/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".action_locations DROP COLUMN created_by;
ALTER TABLE "dashboard_public".action_locations DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".action_locations;


COMMIT;  

