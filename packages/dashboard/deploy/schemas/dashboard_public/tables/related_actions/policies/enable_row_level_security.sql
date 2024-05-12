-- Deploy: schemas/dashboard_public/tables/related_actions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table

BEGIN;

ALTER TABLE "dashboard_public".related_actions
    ENABLE ROW LEVEL SECURITY;
COMMIT;
