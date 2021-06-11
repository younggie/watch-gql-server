-- CreateTable
CREATE TABLE "User" (
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
CREATE UNIQUE INDEX "User.billNo_unique" ON "User"("billNo");
