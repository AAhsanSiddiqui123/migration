-- Revert: schemas/dashboard_public/tables/user_answers/columns/form_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers DROP COLUMN form_id;
COMMIT;  

