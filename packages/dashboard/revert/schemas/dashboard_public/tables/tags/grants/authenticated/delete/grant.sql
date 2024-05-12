-- Revert: schemas/dashboard_public/tables/tags/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".tags FROM authenticated;
COMMIT;  

