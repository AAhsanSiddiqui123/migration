-- Revert: schemas/dashboard_public/tables/user_profiles/columns/tags/alterations/alt0000000567 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_profiles.tags IS NULL;
COMMIT;  

