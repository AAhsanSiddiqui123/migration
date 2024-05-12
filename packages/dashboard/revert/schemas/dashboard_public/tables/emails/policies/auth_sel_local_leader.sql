-- Revert schemas/dashboard_public/tables/emails/policies/auth_sel_local_leader from pg

BEGIN;



DROP POLICY auth_sel_local_leader ON dashboard_public.emails;

COMMIT;
