import { gql } from "apollo-server";

export default gql`
  type User {
    id: Int!
    name: String!
    userId: String!
    email: String!
    createdAt: String!
    updatedAt: String!
  }
`;
