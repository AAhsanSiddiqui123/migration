-- Revert: schemas/dashboard_public/tables/groups/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".groups FROM authenticated;
COMMIT;  

