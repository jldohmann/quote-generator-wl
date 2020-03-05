page = Import["https://en.wikiquote.org/wiki/Stephen_Wolfram","Data"]

quotes = page[[1,1,8;;12]]
quotesClean = StringSplit[quotes, ","]

data = Export["quotes.json",
    <|
    "quotes" -> Table[
        "quote" <> ToString[n] -> quotes[[n]],
        {n, 1, Length[quotes]}
        ]
    |>,
    "JSON"
]
