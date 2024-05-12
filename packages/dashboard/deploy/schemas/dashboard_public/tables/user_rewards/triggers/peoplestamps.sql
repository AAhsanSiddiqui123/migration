-- Deploy schemas/dashboard_public/tables/user_rewards/triggers/peoplestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_rewards/table

BEGIN;

ALTER TABLE dashboard_public.user_rewards ADD COLUMN created_by UUID;
ALTER TABLE dashboard_public.user_rewards ADD COLUMN updated_by UUID;

CREATE TRIGGER update_dashboard_public_user_rewards_moduser
BEFORE UPDATE OR INSERT ON dashboard_public.user_rewards
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();

COMMIT;
