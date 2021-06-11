/*
  Warnings:

  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "Bill" (
    "id" SERIAL NOT NULL,
    "billNo" TEXT NOT NULL,
    "billKind" INTEGER NOT NULL,
    "billName" TEXT NOT NULL,
    "billfrom" TEXT NOT NULL,
    "billClass" TEXT NOT NULL,
    "billDate" TEXT NOT NULL,
    "committee" TEXT NOT NULL,
    "committeeId" INTEGER NOT NULL,
    "billResult" TEXT NOT NULL,
    "billUrl" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Bill.billNo_unique" ON "Bill"("billNo");
