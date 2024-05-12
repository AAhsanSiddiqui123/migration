-- Revert: schemas/dashboard_public/tables/actions/constraints/actions_minimum_group_unit_id_fkey/alterations/alt0000000777 from pg

BEGIN;
COMMENT ON CONSTRAINT actions_minimum_group_unit_id_fkey ON "dashboard_public".actions IS NULL;
COMMIT;  

