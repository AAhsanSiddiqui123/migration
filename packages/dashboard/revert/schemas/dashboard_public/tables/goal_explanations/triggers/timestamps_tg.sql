-- Revert: schemas/dashboard_public/tables/goal_explanations/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations DROP COLUMN created_at;
ALTER TABLE "dashboard_public".goal_explanations DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".goal_explanations;

COMMIT;  

