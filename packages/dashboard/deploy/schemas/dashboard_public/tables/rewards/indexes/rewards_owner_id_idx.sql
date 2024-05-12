-- Deploy: schemas/dashboard_public/tables/rewards/indexes/rewards_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table
-- requires: schemas/dashboard_public/tables/rewards/columns/owner_id/column

BEGIN;
CREATE INDEX rewards_owner_id_idx ON "dashboard_public".rewards (owner_id);
COMMIT;
