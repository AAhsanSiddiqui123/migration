-- Deploy dashboard:schemas/dashboard_invites_public/tables/invites/triggers/invite_trigger_send_email_delete to pg

BEGIN;

DROP TRIGGER invite_trigger_send_email ON dashboard_invites_public.invites;

COMMIT;
