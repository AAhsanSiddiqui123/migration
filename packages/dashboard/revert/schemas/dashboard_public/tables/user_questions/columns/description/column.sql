-- Revert: schemas/dashboard_public/tables/user_questions/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN description;
COMMIT;  

