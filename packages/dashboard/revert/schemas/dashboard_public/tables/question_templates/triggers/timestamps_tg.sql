-- Revert: schemas/dashboard_public/tables/question_templates/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".question_templates DROP COLUMN created_at;
ALTER TABLE "dashboard_public".question_templates DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".question_templates;

COMMIT;  

