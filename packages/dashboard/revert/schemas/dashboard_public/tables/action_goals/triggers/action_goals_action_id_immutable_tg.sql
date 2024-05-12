-- Revert: schemas/dashboard_public/tables/action_goals/triggers/action_goals_action_id_immutable_tg from pg

BEGIN;
DROP TRIGGER action_goals_action_id_immutable_tg ON "dashboard_public".action_goals;
COMMIT;  

