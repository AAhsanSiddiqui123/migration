-- Revert dashboard:schemas/dashboard_invites_public/tables/invites/triggers/invite_trigger_send_email_delete from pg

BEGIN;

CREATE TRIGGER invite_trigger_send_email AFTER
INSERT ON
"dashboard_invites_public".invites FOR EACH ROW
EXECUTE PROCEDURE "dashboard_invites_private".invites_insert_before_tg();

COMMIT;
