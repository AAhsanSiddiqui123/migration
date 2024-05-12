-- Revert: schemas/dashboard_public/tables/action_item_types/triggers/action_item_types_ref_num_immutable_tg from pg

BEGIN;
DROP TRIGGER action_item_types_ref_num_immutable_tg ON "dashboard_public".action_item_types;
COMMIT;  

