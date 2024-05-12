-- Revert: schemas/dashboard_public/tables/action_language_variations/constraints/action_language_variations_action_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations 
    DROP CONSTRAINT action_language_variations_action_id_fkey;

COMMIT;  

