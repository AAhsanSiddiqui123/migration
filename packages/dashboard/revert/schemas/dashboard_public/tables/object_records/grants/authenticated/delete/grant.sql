-- Revert: schemas/dashboard_public/tables/object_records/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".object_records FROM authenticated;
COMMIT;  

