-- Revert: schemas/dashboard_public/tables/action_item_language_variations/constraints/action_item_language_variations_action_item_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_language_variations 
    DROP CONSTRAINT action_item_language_variations_action_item_id_fkey;

COMMIT;  

