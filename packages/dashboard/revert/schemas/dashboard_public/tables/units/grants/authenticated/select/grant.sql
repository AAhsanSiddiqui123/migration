-- Revert: schemas/dashboard_public/tables/units/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".units FROM authenticated;
COMMIT;  

