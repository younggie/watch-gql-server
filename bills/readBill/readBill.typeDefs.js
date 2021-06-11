import { gql } from "apollo-server";

export default gql`
  type Query {
    readBill(bill_no: String!): Bill
  }
`;
