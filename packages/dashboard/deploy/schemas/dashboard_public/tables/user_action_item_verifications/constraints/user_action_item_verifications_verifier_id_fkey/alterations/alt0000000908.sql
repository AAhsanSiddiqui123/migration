-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/constraints/user_action_item_verifications_verifier_id_fkey/alterations/alt0000000908 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/constraints/user_action_item_verifications_verifier_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_action_item_verifications_verifier_id_fkey ON "dashboard_public".user_action_item_verifications IS E'@omit manyToMany';
COMMIT;
