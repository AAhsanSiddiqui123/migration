-- Revert: schemas/dashboard_public/tables/actions/constraints/actions_owner_id_fkey/alterations/alt0000000781 from pg

BEGIN;
COMMENT ON CONSTRAINT actions_owner_id_fkey ON "dashboard_public".actions IS NULL;
COMMIT;  

