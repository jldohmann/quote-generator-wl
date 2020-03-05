importedData = Import["quotes.json", "RawJSON"]

q = Values @@ importedData
selectedQuote = RandomChoice[q]

template = XMLTemplate[Import["/templates/quotes.html", "String"]]
renderTemplate = TemplateApply[template, <|"quote" -> selectedQuote|>]

Delayed[ExportForm[renderTemplate, "HTML"]]
