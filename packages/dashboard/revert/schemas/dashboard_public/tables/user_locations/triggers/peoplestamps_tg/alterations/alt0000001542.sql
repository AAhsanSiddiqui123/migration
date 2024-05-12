-- Revert: schemas/dashboard_public/tables/user_locations/triggers/peoplestamps_tg/alterations/alt0000001542 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations DROP COLUMN created_by;
ALTER TABLE "dashboard_public".user_locations DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".user_locations;


COMMIT;  

