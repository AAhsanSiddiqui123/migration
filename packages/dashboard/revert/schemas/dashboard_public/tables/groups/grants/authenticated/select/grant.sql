-- Revert: schemas/dashboard_public/tables/groups/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".groups FROM authenticated;
COMMIT;  

