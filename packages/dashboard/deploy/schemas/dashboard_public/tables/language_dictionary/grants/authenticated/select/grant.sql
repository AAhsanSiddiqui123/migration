-- Deploy: schemas/dashboard_public/tables/language_dictionary/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".language_dictionary TO authenticated;
COMMIT;
