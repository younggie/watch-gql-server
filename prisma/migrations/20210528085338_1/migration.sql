-- CreateTable
CREATE TABLE "Bill" (
    "id" SERIAL NOT NULL,
    "bill_no" TEXT NOT NULL,
    "bill_kind" INTEGER,
    "bill_name" TEXT NOT NULL,
    "who" TEXT,
    "bill_class" TEXT,
    "bill_date" TEXT,
    "committee" TEXT,
    "comm_seq" INTEGER,
    "bill_result" TEXT,
    "match_url" TEXT,
    "create_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_date" TIMESTAMP(3),
    "congressmanId" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Congressman" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "elect_num" TEXT,
    "eng_name" TEXT,
    "chn_name" TEXT,
    "gender" TEXT,
    "birth_where" TEXT,
    "birth_date" TEXT,
    "email" TEXT,
    "homepage" TEXT,
    "create_date" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "update_date" TIMESTAMP(3),

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Party" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "note" TEXT,
    "inuse" TEXT,
    "create_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_date" TIMESTAMP(3),

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Pistory" (
    "id" SERIAL NOT NULL,
    "note" TEXT,
    "in_date" TEXT NOT NULL,
    "out_date" TEXT NOT NULL,
    "partyId" INTEGER NOT NULL,
    "congressmanId" INTEGER NOT NULL,
    "create_date" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "update_date" TIMESTAMP(3),

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Bill.bill_no_unique" ON "Bill"("bill_no");

-- AddForeignKey
ALTER TABLE "Bill" ADD FOREIGN KEY ("congressmanId") REFERENCES "Congressman"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pistory" ADD FOREIGN KEY ("partyId") REFERENCES "Party"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pistory" ADD FOREIGN KEY ("congressmanId") REFERENCES "Congressman"("id") ON DELETE CASCADE ON UPDATE CASCADE;
