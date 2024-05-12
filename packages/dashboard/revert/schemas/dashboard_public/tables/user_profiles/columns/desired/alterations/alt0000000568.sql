-- Revert: schemas/dashboard_public/tables/user_profiles/columns/desired/alterations/alt0000000568 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_profiles.desired IS NULL;
COMMIT;  

