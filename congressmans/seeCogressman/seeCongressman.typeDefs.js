import { gql } from "apollo-server";

export default gql`
  type CongressmanResult {
    ok: Boolean!
    error: String
    congressman: Congressman
    laws: [Bill]
    pistorys: [Pistory]
  }

  type Query {
    seeCongressman(id: Int!): CongressmanResult
  }
`;
