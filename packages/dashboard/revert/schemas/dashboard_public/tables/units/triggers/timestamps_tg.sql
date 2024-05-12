-- Revert: schemas/dashboard_public/tables/units/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".units DROP COLUMN created_at;
ALTER TABLE "dashboard_public".units DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".units;

COMMIT;  

