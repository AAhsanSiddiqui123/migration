-- Revert: schemas/dashboard_public/tables/groups/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".groups DROP COLUMN created_at;
ALTER TABLE "dashboard_public".groups DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".groups;

COMMIT;  

