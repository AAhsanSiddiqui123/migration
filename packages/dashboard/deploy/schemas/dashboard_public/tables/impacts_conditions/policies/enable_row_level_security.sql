-- Deploy: schemas/dashboard_public/tables/impacts_conditions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions
    ENABLE ROW LEVEL SECURITY;
COMMIT;
