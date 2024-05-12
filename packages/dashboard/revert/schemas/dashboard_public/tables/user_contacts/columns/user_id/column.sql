-- Revert: schemas/dashboard_public/tables/user_contacts/columns/user_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_contacts DROP COLUMN user_id;
COMMIT;  

