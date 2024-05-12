-- Revert: schemas/dashboard_public/tables/user_actions/columns/location/alterations/alt0000000852 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_actions.location IS NULL;
COMMIT;  

