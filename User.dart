import 'dart:core';




class User{
  final int UserId;
  final String UserName;
  final String Name;
  final String EmailAddress;
  final String ProfilePic;
  final bool RegistrationConfirmed;
  final int VoteCount;
  final String CreditCardNumber;
  final String CreditCardExpMonth;
  final String CreditCardCVV;
  final String CreditCardExpYear;
  final String BillingAddress;
  final String BillingCity;
  final String BillingState;
  final String BillingZipCode;
  final bool PreviousPaymentSuccessful;

  static final columns = ["UserId", "UserName", "Name", "EmailAddress",
  "ProfilePic","RegistrationConfirmed", "VoteCount", "CreditCardNumber",
  "CreditCardExpMonth", "CreditCardCVV", "CreditCardExpYear", "BillingAddress",
  "BillingCity", "BillingState", "BillingZipCode", "PreviousPaymentSuccessful"];

  User(this.UserId, this.UserName, this.Name, this.EmailAddress, this.ProfilePic,
      this.RegistrationConfirmed, this.VoteCount, this.CreditCardNumber,
      this.CreditCardExpMonth, this.CreditCardCVV, this.CreditCardExpYear,
      this.BillingAddress, this.BillingCity, this.BillingState, this.BillingZipCode,
      this.PreviousPaymentSuccessful);

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      data['UserId'],
      data['UserName'],
      data['Name'],
      data['EmailAddress'],
      data['ProfilePic'],
      data['RegistrationConfirmed'],
      data['VoteCount'],
      data['CreditCardNumber'],
      data['CreditCardExpMonth'],
      data['CreditCardCVV'],
      data['CreditCardExpYear'],
      data['BillingAddress'],
      data['BillingCity'],
      data['BillingState'],
      data['BillingZipCode'],
      data['PreviousPaymentSuccessful'],

      );
    }

    Map<String,dynamic> toMap() => {
      "UserId":UserId,
      "UserName": UserName,
      "Name": Name,
      "EmailAddress": EmailAddress,
      "ProfilePic": ProfilePic,
      "RegistrationConfirmed": RegistrationConfirmed,
      "VoteCount": VoteCount,
      "CreditCardNumber": CreditCardNumber,
      "CreditCardExpMonth": CreditCardExpMonth,
      "CreditCardCVV": CreditCardCVV,
      "CreditCardExpYear": CreditCardExpYear,
      "BillingAddress": BillingAddress,
      "BillingCity": BillingCity,
      "BillingState": BillingState,
      "BillingZipCode": BillingZipCode,
      "PreviousPaymentSuccessful": PreviousPaymentSuccessful,
    };
}