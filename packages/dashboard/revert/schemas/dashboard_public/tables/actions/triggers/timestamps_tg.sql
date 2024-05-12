-- Revert: schemas/dashboard_public/tables/actions/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN created_at;
ALTER TABLE "dashboard_public".actions DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".actions;

COMMIT;  

