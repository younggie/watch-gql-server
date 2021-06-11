import client from "../../client";

export default {
  Query: {
    seeCongressman: (_, { id }) => {
      const man = client.congressman.findUnique({
        where: {
          id,
        },
      });

      const laws = client.bill.findMany({
        where: {
          congressmanId: id,
        },
      });

      const pistorys = client.pistory.findMany({
        where: {
          congressmanId: id,
        },
      });

      return {
        ok: true,
        congressman: man,
        laws,
        pistorys,
      };
    },
  },
};
