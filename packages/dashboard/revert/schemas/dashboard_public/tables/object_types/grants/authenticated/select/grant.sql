-- Revert: schemas/dashboard_public/tables/object_types/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".object_types FROM authenticated;
COMMIT;  

