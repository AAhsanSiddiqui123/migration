-- Revert: schemas/dashboard_public/tables/question_values/columns/value_order/column from pg

BEGIN;


ALTER TABLE "dashboard_public".question_values DROP COLUMN value_order;
COMMIT;  

