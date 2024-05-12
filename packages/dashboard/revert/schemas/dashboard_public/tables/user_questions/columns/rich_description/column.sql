-- Revert: schemas/dashboard_public/tables/user_questions/columns/rich_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN rich_description;
COMMIT;  

