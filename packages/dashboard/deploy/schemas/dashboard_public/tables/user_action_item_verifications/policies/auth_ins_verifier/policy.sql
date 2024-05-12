-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/policies/auth_ins_verifier/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table

BEGIN;
CREATE POLICY auth_ins_verifier ON "dashboard_public".user_action_item_verifications FOR INSERT TO authenticated WITH CHECK ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000010000000000000') = '00000000000000000010000000000000') );
COMMIT;
