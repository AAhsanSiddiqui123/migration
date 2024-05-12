-- Deploy: schemas/dashboard_public/tables/action_item_types/policies/auth_ins_admin/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table

BEGIN;
CREATE POLICY auth_ins_admin ON "dashboard_public".action_item_types FOR INSERT TO authenticated WITH CHECK ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_admin IS TRUE) );
COMMIT;
