-- Revert: schemas/dashboard_public/tables/impacts_conditions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".impacts_conditions FROM authenticated;
COMMIT;  

