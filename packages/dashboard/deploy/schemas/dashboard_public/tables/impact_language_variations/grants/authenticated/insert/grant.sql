-- Deploy: schemas/dashboard_public/tables/impact_language_variations/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impact_language_variations/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".impact_language_variations TO authenticated;
COMMIT;
