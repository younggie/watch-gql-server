import client from "../../client";

export default {
  Query: {
    readBill: (_, { bill_no }) =>
      client.bill.findUnique({
        where: {
          bill_no,
        },
      }),
  },
};
