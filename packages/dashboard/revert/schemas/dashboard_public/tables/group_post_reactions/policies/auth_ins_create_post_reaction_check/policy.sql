-- Revert: schemas/dashboard_public/tables/group_post_reactions/policies/auth_ins_create_post_reaction_check/policy from pg

BEGIN;
DROP POLICY auth_ins_create_post_reaction_check ON "dashboard_public".group_post_reactions;
COMMIT;  

