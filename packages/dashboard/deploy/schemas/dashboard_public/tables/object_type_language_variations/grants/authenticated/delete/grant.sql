-- Deploy: schemas/dashboard_public/tables/object_type_language_variations/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_language_variations/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".object_type_language_variations TO authenticated;
COMMIT;
