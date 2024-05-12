-- Revert: schemas/dashboard_public/tables/action_variations/triggers/action_variations_action_id_immutable_tg from pg

BEGIN;
DROP TRIGGER action_variations_action_id_immutable_tg ON "dashboard_public".action_variations;
COMMIT;  

