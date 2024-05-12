-- Revert: schemas/dashboard_public/tables/question_types/columns/slug/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types DROP COLUMN slug;
COMMIT;  

