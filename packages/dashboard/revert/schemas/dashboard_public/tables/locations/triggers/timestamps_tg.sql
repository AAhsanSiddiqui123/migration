-- Revert: schemas/dashboard_public/tables/locations/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".locations DROP COLUMN created_at;
ALTER TABLE "dashboard_public".locations DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".locations;

COMMIT;  

