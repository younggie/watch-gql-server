/*
  Warnings:

  - Added the required column `congressmanId` to the `PartyHistory` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "PartyHistory" ADD COLUMN     "congressmanId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "PartyHistory" ADD FOREIGN KEY ("congressmanId") REFERENCES "Congressman"("id") ON DELETE CASCADE ON UPDATE CASCADE;
