-- Revert: schemas/dashboard_public/tables/question_values/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN created_by;
ALTER TABLE "dashboard_public".question_values DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".question_values;


COMMIT;  

