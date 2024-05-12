-- Deploy: schemas/dashboard_public/tables/rewards/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table

BEGIN;

ALTER TABLE "dashboard_public".rewards
    ENABLE ROW LEVEL SECURITY;
COMMIT;
