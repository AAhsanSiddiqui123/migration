-- Revert: schemas/dashboard_public/tables/impacts/alterations/alt0000001459 from pg

BEGIN;
COMMENT ON TABLE "dashboard_public".impacts IS NULL;
COMMIT;  

