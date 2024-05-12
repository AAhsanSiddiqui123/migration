-- Revert: schemas/dashboard_public/tables/impacts/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".impacts FROM authenticated;
COMMIT;  

