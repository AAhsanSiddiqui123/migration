-- Revert: schemas/dashboard_public/tables/user_profiles/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_profiles DROP COLUMN id;
COMMIT;  

