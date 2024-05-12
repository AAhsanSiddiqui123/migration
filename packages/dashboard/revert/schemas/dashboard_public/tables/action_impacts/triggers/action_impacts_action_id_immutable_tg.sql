-- Revert: schemas/dashboard_public/tables/action_impacts/triggers/action_impacts_action_id_immutable_tg from pg

BEGIN;
DROP TRIGGER action_impacts_action_id_immutable_tg ON "dashboard_public".action_impacts;
COMMIT;  

