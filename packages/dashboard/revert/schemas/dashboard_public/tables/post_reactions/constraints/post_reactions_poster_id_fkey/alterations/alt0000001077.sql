-- Revert: schemas/dashboard_public/tables/post_reactions/constraints/post_reactions_poster_id_fkey/alterations/alt0000001077 from pg

BEGIN;
COMMENT ON CONSTRAINT post_reactions_poster_id_fkey ON "dashboard_public".post_reactions IS NULL;
COMMIT;  

