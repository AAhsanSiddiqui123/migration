-- Revert: schemas/dashboard_public/tables/user_questions/columns/template_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN template_id;
COMMIT;  

