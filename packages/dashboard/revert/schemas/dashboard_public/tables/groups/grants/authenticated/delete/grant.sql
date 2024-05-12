-- Revert: schemas/dashboard_public/tables/groups/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".groups FROM authenticated;
COMMIT;  

