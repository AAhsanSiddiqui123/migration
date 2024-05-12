-- Deploy: schemas/dashboard_public/tables/group_posts/policies/auth_ins_create_post_check/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table

BEGIN;
CREATE POLICY auth_ins_create_post_check ON "dashboard_public".group_posts AS RESTRICTIVE FOR INSERT TO authenticated WITH CHECK ( group_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000010000000000') = '00000000000000000000010000000000') );
COMMIT;
