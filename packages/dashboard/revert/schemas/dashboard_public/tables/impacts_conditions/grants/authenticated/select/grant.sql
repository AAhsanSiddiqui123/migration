-- Revert: schemas/dashboard_public/tables/impacts_conditions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".impacts_conditions FROM authenticated;
COMMIT;  

