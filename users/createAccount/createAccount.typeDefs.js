import { gql } from "apollo-server";

export default gql`
  type Mutation {
    createAccount(
      name: String!
      userId: String!
      email: String!
      password: String!
    ): MutationResponse
  }
`;
