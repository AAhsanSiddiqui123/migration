-- Revert: schemas/dashboard_public/tables/impacts/constraints/impacts_unit_id_fkey/alterations/alt0000000719 from pg

BEGIN;
COMMENT ON CONSTRAINT impacts_unit_id_fkey ON "dashboard_public".impacts IS NULL;
COMMIT;  

