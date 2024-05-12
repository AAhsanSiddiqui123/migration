-- Revert: schemas/dashboard_public/tables/action_variations/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations DROP COLUMN created_by;
ALTER TABLE "dashboard_public".action_variations DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".action_variations;


COMMIT;  

