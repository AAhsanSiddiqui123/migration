-- Revert: schemas/dashboard_public/tables/action_language_variations/triggers/action_language_variations_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER action_language_variations_owner_id_immutable_tg ON "dashboard_public".action_language_variations;
COMMIT;  

