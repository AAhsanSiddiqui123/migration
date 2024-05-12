-- Revert: schemas/dashboard_public/tables/data_tags/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".data_tags DROP COLUMN created_at;
ALTER TABLE "dashboard_public".data_tags DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".data_tags;

COMMIT;  

