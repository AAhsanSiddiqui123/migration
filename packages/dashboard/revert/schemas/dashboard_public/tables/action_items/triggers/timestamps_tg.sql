-- Revert: schemas/dashboard_public/tables/action_items/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN created_at;
ALTER TABLE "dashboard_public".action_items DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".action_items;

COMMIT;  

