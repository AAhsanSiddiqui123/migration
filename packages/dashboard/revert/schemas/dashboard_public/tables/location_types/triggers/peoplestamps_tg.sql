-- Revert: schemas/dashboard_public/tables/location_types/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types DROP COLUMN created_by;
ALTER TABLE "dashboard_public".location_types DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".location_types;


COMMIT;  

