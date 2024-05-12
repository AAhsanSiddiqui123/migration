-- Deploy: schemas/dashboard_public/tables/action_language_variations/alterations/alt0000001271 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".action_language_variations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
