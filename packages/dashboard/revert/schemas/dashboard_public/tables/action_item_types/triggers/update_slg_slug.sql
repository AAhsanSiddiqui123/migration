-- Revert: schemas/dashboard_public/tables/action_item_types/triggers/update_slg_slug from pg

BEGIN;
DROP TRIGGER update_slg_slug ON "dashboard_public".action_item_types;
COMMIT;  

