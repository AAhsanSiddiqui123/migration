-- Revert dashboard:schemas/dashboard_public/tables/actions/migration/update_action_name from pg

BEGIN;

    UPDATE dashboard_public.actions SET name=NULL;
    
COMMIT;
