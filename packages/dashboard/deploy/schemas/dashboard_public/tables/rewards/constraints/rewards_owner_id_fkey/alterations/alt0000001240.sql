-- Deploy: schemas/dashboard_public/tables/rewards/constraints/rewards_owner_id_fkey/alterations/alt0000001240 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/constraints/rewards_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT rewards_owner_id_fkey ON "dashboard_public".rewards IS NULL;
COMMIT;
