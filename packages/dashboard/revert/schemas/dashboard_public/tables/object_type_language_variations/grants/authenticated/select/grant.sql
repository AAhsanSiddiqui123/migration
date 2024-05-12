-- Revert: schemas/dashboard_public/tables/object_type_language_variations/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".object_type_language_variations FROM authenticated;
COMMIT;  

