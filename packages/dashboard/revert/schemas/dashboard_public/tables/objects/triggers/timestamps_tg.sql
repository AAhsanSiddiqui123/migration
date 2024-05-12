-- Revert: schemas/dashboard_public/tables/objects/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN created_at;
ALTER TABLE "dashboard_public".objects DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".objects;

COMMIT;  

