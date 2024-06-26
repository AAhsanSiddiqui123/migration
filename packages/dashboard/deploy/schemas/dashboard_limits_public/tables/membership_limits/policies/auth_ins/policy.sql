-- Deploy: schemas/dashboard_limits_public/tables/membership_limits/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/membership_limits/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_limits_public".membership_limits FOR INSERT TO authenticated WITH CHECK ( entity_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000000001') = '00000000000000000000000000000001') );
COMMIT;
