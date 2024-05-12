-- Revert: schemas/dashboard_public/tables/object_type_values/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".object_type_values FROM authenticated;
COMMIT;  

