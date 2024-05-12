-- Revert: schemas/dashboard_public/tables/action_status_types/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".action_status_types DROP COLUMN created_by;
ALTER TABLE "dashboard_public".action_status_types DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".action_status_types;


COMMIT;  

