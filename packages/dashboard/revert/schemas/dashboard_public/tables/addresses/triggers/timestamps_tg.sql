-- Revert: schemas/dashboard_public/tables/addresses/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses DROP COLUMN created_at;
ALTER TABLE "dashboard_public".addresses DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".addresses;

COMMIT;  

