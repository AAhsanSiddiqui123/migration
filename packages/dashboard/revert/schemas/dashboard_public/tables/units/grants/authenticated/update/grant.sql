-- Revert: schemas/dashboard_public/tables/units/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".units FROM authenticated;
COMMIT;  

