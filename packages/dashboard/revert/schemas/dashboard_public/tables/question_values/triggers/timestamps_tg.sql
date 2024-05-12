-- Revert: schemas/dashboard_public/tables/question_values/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN created_at;
ALTER TABLE "dashboard_public".question_values DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".question_values;

COMMIT;  

