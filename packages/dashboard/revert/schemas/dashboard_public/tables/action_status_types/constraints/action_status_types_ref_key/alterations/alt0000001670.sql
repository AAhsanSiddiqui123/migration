-- Revert: schemas/dashboard_public/tables/action_status_types/constraints/action_status_types_ref_key/alterations/alt0000001670 from pg

BEGIN;
COMMENT ON CONSTRAINT action_status_types_ref_key ON "dashboard_public".action_status_types IS NULL;
COMMIT;  

