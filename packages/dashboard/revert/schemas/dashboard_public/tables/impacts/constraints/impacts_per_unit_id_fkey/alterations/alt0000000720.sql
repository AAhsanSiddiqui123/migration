-- Revert: schemas/dashboard_public/tables/impacts/constraints/impacts_per_unit_id_fkey/alterations/alt0000000720 from pg

BEGIN;
COMMENT ON CONSTRAINT impacts_per_unit_id_fkey ON "dashboard_public".impacts IS NULL;
COMMIT;  

