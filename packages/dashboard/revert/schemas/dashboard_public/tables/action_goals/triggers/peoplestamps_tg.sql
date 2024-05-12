-- Revert: schemas/dashboard_public/tables/action_goals/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals DROP COLUMN created_by;
ALTER TABLE "dashboard_public".action_goals DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".action_goals;


COMMIT;  

