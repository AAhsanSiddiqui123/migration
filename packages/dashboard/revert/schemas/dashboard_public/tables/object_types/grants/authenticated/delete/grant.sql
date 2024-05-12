-- Revert: schemas/dashboard_public/tables/object_types/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".object_types FROM authenticated;
COMMIT;  

