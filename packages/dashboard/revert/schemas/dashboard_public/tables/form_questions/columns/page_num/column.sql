-- Revert: schemas/dashboard_public/tables/form_questions/columns/page_num/column from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions DROP COLUMN page_num;
COMMIT;  

