-- Revert: schemas/dashboard_public/tables/user_questions/columns/pattern/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN pattern;
COMMIT;  

