-- Revert: schemas/dashboard_public/tables/object_type_language_variations/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".object_type_language_variations FROM authenticated;
COMMIT;  

