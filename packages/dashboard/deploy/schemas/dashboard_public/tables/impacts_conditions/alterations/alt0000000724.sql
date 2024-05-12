-- Deploy: schemas/dashboard_public/tables/impacts_conditions/alterations/alt0000000724 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table

BEGIN;

ALTER TABLE "dashboard_public".impacts_conditions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
