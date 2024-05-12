-- Revert: schemas/dashboard_public/tables/action_goals/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals DROP COLUMN created_at;
ALTER TABLE "dashboard_public".action_goals DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".action_goals;

COMMIT;  

