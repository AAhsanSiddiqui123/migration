-- Revert: schemas/dashboard_public/tables/user_questions/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN owner_id;
COMMIT;  

