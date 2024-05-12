-- Revert: schemas/dashboard_public/tables/question_values/columns/location/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN location;
COMMIT;  

