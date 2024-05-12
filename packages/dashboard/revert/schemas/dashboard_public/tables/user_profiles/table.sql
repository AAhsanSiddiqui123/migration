-- Revert: schemas/dashboard_public/tables/user_profiles/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_profiles;
COMMIT;  

