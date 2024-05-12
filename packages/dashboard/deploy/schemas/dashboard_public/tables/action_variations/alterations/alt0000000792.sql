-- Deploy: schemas/dashboard_public/tables/action_variations/alterations/alt0000000792 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_variations/table

BEGIN;

ALTER TABLE "dashboard_public".action_variations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
