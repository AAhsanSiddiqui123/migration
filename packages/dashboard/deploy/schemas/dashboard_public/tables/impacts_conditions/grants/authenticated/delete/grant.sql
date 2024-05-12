-- Deploy: schemas/dashboard_public/tables/impacts_conditions/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".impacts_conditions TO authenticated;
COMMIT;
