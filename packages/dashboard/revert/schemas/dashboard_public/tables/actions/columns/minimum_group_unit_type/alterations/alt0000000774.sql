-- Revert: schemas/dashboard_public/tables/actions/columns/minimum_group_unit_type/alterations/alt0000000774 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".actions.minimum_group_unit_type IS NULL;
COMMIT;  

