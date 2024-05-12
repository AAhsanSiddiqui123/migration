-- Revert: schemas/dashboard_public/tables/user_answers/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers DROP COLUMN owner_id;
COMMIT;  

