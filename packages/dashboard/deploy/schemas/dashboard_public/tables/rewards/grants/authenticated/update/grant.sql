-- Deploy: schemas/dashboard_public/tables/rewards/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".rewards TO authenticated;
COMMIT;
