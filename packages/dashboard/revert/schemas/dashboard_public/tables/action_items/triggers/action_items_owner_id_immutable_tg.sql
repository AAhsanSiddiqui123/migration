-- Revert: schemas/dashboard_public/tables/action_items/triggers/action_items_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER action_items_owner_id_immutable_tg ON "dashboard_public".action_items;
COMMIT;  

