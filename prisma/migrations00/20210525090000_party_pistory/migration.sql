/*
  Warnings:

  - You are about to drop the column `partyId` on the `Pistory` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Pistory" DROP CONSTRAINT "Pistory_partyId_fkey";

-- AlterTable
ALTER TABLE "Pistory" DROP COLUMN "partyId";

-- CreateTable
CREATE TABLE "_PartyToPistory" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_PartyToPistory_AB_unique" ON "_PartyToPistory"("A", "B");

-- CreateIndex
CREATE INDEX "_PartyToPistory_B_index" ON "_PartyToPistory"("B");

-- AddForeignKey
ALTER TABLE "_PartyToPistory" ADD FOREIGN KEY ("A") REFERENCES "Party"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_PartyToPistory" ADD FOREIGN KEY ("B") REFERENCES "Pistory"("id") ON DELETE CASCADE ON UPDATE CASCADE;
