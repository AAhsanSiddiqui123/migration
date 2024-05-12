-- Deploy: schemas/dashboard_public/tables/group_post_comments/policies/auth_ins_create_post_comment_check/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table

BEGIN;
CREATE POLICY auth_ins_create_post_comment_check ON "dashboard_public".group_post_comments AS RESTRICTIVE FOR INSERT TO authenticated WITH CHECK ( group_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id()) );
COMMIT;
