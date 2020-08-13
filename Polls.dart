import 'dart:core';




class Poll{
  final int PollId;
  final String UserName;
  final int TotalVotes;
  final String TimeStampStarted;
  final String TimeStampEnded;
  final String PollTitle;
  final String PollDescription;

  static final columns = ["PollId", "UserName", "TotalVotes", "TimeStampStarted",
    "TimeStampEnded","PollTitle", "PollDescription"];

  Poll(this.PollId, this.UserName, this.TotalVotes, this.TimeStampStarted,
      this.TimeStampEnded, this.PollTitle, this.PollDescription);

  factory Poll.fromMap(Map<String, dynamic> data) {
    return Poll(
      data['PollId'],
      data['UserName'],
      data['TotalVotes'],
      data['TimeStampStarted'],
      data['TimeStampEnded'],
      data['PollTitle'],
      data['PollDescription']
    );
  }

  Map<String,dynamic> toMap() => {
    "PollId":PollId,
    "UserName": UserName,
    "TotalVotes": TotalVotes,
    "TimeStampStarted": TimeStampStarted,
    "TimeStampEnded": TimeStampEnded,
    "PollTitle": PollTitle,
    "PollDescription": PollDescription
  };
}