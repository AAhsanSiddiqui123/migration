-- Deploy: schemas/dashboard_public/tables/user_action_verifications/indexes/user_action_verifications_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_verifications/table
-- requires: schemas/dashboard_public/tables/user_action_verifications/columns/user_id/column

BEGIN;
CREATE INDEX user_action_verifications_user_id_idx ON "dashboard_public".user_action_verifications (user_id);
COMMIT;
