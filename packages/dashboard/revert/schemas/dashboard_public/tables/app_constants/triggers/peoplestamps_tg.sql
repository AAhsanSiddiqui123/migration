-- Revert: schemas/dashboard_public/tables/app_constants/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants DROP COLUMN created_by;
ALTER TABLE "dashboard_public".app_constants DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".app_constants;


COMMIT;  

