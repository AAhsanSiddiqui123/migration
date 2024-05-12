-- Deploy: schemas/dashboard_limits_public/tables/group_member_limits/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/group_member_limits/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_limits_public".group_member_limits FOR INSERT TO authenticated WITH CHECK ( entity_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000010000') = '00000000000000000000000000010000') );
COMMIT;
