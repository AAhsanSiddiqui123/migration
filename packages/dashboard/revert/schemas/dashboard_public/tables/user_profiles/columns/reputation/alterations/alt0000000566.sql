-- Revert: schemas/dashboard_public/tables/user_profiles/columns/reputation/alterations/alt0000000566 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_profiles.reputation IS NULL;
COMMIT;  

