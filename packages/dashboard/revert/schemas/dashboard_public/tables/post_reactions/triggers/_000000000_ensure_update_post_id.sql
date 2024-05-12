-- Revert: schemas/dashboard_public/tables/post_reactions/triggers/_000000000_ensure_update_post_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_post_id ON "dashboard_public".post_reactions;
COMMIT;  

