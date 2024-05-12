-- Verify: schemas/dashboard_public/tables/post_reactions/triggers/_000000000_ensure_update_post_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_update_post_id');
COMMIT;  

