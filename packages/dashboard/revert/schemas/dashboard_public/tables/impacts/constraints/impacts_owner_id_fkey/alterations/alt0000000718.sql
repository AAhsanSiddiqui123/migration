-- Revert: schemas/dashboard_public/tables/impacts/constraints/impacts_owner_id_fkey/alterations/alt0000000718 from pg

BEGIN;
COMMENT ON CONSTRAINT impacts_owner_id_fkey ON "dashboard_public".impacts IS NULL;
COMMIT;  

