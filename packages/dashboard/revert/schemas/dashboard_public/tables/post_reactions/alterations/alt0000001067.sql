-- Revert: schemas/dashboard_public/tables/post_reactions/alterations/alt0000001067 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

