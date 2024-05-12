-- Revert: schemas/dashboard_public/tables/action_item_types/triggers/insert_slg_slug from pg

BEGIN;
DROP TRIGGER insert_slg_slug ON "dashboard_public".action_item_types;
COMMIT;  

