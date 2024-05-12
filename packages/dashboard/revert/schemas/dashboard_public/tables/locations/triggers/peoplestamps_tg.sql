-- Revert: schemas/dashboard_public/tables/locations/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN created_by;
ALTER TABLE "dashboard_public".locations DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".locations;


COMMIT;  

