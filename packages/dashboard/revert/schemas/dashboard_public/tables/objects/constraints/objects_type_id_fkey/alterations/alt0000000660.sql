-- Revert: schemas/dashboard_public/tables/objects/constraints/objects_type_id_fkey/alterations/alt0000000660 from pg

BEGIN;
COMMENT ON CONSTRAINT objects_type_id_fkey ON "dashboard_public".objects IS NULL;
COMMIT;  

