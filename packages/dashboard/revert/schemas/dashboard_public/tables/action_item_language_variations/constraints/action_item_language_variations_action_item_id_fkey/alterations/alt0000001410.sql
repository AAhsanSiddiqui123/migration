-- Revert: schemas/dashboard_public/tables/action_item_language_variations/constraints/action_item_language_variations_action_item_id_fkey/alterations/alt0000001410 from pg

BEGIN;
COMMENT ON CONSTRAINT action_item_language_variations_action_item_id_fkey ON "dashboard_public".action_item_language_variations IS NULL;
COMMIT;  

