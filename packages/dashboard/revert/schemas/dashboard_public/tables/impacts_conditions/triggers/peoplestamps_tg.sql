-- Revert: schemas/dashboard_public/tables/impacts_conditions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN created_by;
ALTER TABLE "dashboard_public".impacts_conditions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".impacts_conditions;


COMMIT;  

