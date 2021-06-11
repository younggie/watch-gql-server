require("dotenv").config();
import express from "express";
import logger from "morgan";
import { ApolloServer } from "apollo-server-express";
import { typeDefs, resolvers } from "./schema";

const PORT = process.env.PORT;
const server = new ApolloServer({
  typeDefs,
  resolvers,
});

const app = express();
//app.use(logger("tiny"));
app.use("/static", express.static("uploads"));

server.applyMiddleware({ app });

app.listen({ port: PORT }, () => {
  console.log(`🦜 Server is running on http://localhost:${PORT} 👀`);
});
