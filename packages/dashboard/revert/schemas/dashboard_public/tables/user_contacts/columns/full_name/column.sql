-- Revert: schemas/dashboard_public/tables/user_contacts/columns/full_name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_contacts DROP COLUMN full_name;
COMMIT;  

