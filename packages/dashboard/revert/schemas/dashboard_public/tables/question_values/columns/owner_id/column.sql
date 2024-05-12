-- Revert: schemas/dashboard_public/tables/question_values/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN owner_id;
COMMIT;  

