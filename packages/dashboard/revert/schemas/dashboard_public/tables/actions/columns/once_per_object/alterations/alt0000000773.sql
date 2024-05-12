-- Revert: schemas/dashboard_public/tables/actions/columns/once_per_object/alterations/alt0000000773 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".actions.once_per_object IS NULL;
COMMIT;  

