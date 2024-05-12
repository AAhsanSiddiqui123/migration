-- Revert: schemas/dashboard_public/tables/user_questions/columns/help_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN help_text;
COMMIT;  

