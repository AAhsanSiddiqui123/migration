-- Revert: schemas/dashboard_public/tables/track_groups/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".track_groups;
COMMIT;  

