const messages = ['今日もお疲れ様でした', 'ゆっくりお休みください', '美味しいご飯を食べましょう', 'お風呂でのんびりしましょう'];
  const messageNo = Math.floor(Math.random() * messages.length);
  console.log(messages[messageNo]);