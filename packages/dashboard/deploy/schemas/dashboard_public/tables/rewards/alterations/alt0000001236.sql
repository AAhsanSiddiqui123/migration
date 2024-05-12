-- Deploy: schemas/dashboard_public/tables/rewards/alterations/alt0000001236 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table

BEGIN;

ALTER TABLE "dashboard_public".rewards
    DISABLE ROW LEVEL SECURITY;
COMMIT;
