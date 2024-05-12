-- Revert: schemas/dashboard_public/tables/objects/constraints/objects_owner_id_fkey/alterations/alt0000000658 from pg

BEGIN;
COMMENT ON CONSTRAINT objects_owner_id_fkey ON "dashboard_public".objects IS NULL;
COMMIT;  

