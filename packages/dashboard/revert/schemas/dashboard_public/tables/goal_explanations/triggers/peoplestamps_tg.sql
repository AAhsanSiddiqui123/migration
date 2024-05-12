-- Revert: schemas/dashboard_public/tables/goal_explanations/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations DROP COLUMN created_by;
ALTER TABLE "dashboard_public".goal_explanations DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".goal_explanations;


COMMIT;  

