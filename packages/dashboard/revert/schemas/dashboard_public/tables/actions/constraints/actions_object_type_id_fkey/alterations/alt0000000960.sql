-- Revert: schemas/dashboard_public/tables/actions/constraints/actions_object_type_id_fkey/alterations/alt0000000960 from pg

BEGIN;
COMMENT ON CONSTRAINT actions_object_type_id_fkey ON "dashboard_public".actions IS NULL;
COMMIT;  

