-- Revert: schemas/dashboard_public/tables/tags/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".tags DROP COLUMN created_at;
ALTER TABLE "dashboard_public".tags DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".tags;

COMMIT;  

