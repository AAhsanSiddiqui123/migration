-- Revert: schemas/dashboard_public/tables/actions/constraints/actions_group_id_fkey/alterations/alt0000000778 from pg

BEGIN;
COMMENT ON CONSTRAINT actions_group_id_fkey ON "dashboard_public".actions IS NULL;
COMMIT;  

