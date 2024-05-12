-- Deploy schemas/dashboard_public/tables/form_question_language_variations/policies/auth_ins to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_question_language_variations/table
-- requires: schemas/dashboard_public/tables/form_question_language_variations/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_ins ON dashboard_public.form_question_language_variations
  FOR INSERT
  TO authenticated
   WITH CHECK (
      ((EXISTS ( SELECT 1
      FROM dashboard_memberships_private.app_memberships_acl acl
      WHERE ((acl.actor_id = jwt_public.current_user_id()) AND ((acl.permissions & '00000000000000100000000000000000'::"bit") = '00000000000000100000000000000000'::"bit")))) OR ((owner_id IN ( SELECT acl.actor_id
      FROM dashboard_memberships_private.app_memberships_acl acl
      WHERE ((acl.actor_id = form_question_language_variations.owner_id) AND ((acl.permissions & '00000000000000100000000000000000'::"bit") = '00000000000000100000000000000000'::"bit")))) AND (owner_id IN ( SELECT acl.entity_id
      FROM dashboard_memberships_private.memberships_acl acl
      WHERE ((acl.actor_id = jwt_public.current_user_id()) AND ((acl.permissions & '00000000000100000000000000000000'::"bit") = '00000000000100000000000000000000'::"bit"))))))
  );





COMMIT;
