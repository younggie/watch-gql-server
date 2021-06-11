import { gql } from "apollo-server";

export default gql`
  type CongressmanResult {
    congressmans: [Congressman]
    ok: Boolean!
    error: String
  }

  type Query {
    congressmanList(page: Int): CongressmanResult
  }
`;
