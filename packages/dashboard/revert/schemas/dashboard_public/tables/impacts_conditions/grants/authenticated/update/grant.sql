-- Revert: schemas/dashboard_public/tables/impacts_conditions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".impacts_conditions FROM authenticated;
COMMIT;  

