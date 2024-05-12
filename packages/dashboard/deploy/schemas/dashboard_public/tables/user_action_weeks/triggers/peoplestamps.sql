-- Deploy schemas/dashboard_public/tables/user_action_weeks/triggers/peoplestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_weeks/table

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks ADD COLUMN created_by UUID;
ALTER TABLE dashboard_public.user_action_weeks ADD COLUMN updated_by UUID;

CREATE TRIGGER update_dashboard_public_user_action_weeks_moduser
BEFORE UPDATE OR INSERT ON dashboard_public.user_action_weeks
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();

COMMIT;
