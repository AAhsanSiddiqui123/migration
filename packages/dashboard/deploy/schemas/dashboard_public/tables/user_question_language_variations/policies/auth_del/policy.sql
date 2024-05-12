-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".user_question_language_variations FOR DELETE TO authenticated USING ( owner_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000100000000000000000000') = '00000000000100000000000000000000') );
COMMIT;
