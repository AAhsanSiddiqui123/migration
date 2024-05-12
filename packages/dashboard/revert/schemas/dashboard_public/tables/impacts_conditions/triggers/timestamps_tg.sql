-- Revert: schemas/dashboard_public/tables/impacts_conditions/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN created_at;
ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".impacts_conditions;

COMMIT;  

