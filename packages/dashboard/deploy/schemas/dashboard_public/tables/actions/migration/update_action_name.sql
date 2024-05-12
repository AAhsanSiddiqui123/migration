-- Deploy dashboard:schemas/dashboard_public/tables/actions/migration/update_action_name to pg

BEGIN;

    UPDATE dashboard_public.actions SET name=title;
    
COMMIT;
