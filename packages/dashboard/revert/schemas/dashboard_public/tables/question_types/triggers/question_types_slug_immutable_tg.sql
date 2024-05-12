-- Revert: schemas/dashboard_public/tables/question_types/triggers/question_types_slug_immutable_tg from pg

BEGIN;
DROP TRIGGER question_types_slug_immutable_tg ON "dashboard_public".question_types;
COMMIT;  

