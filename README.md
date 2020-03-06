# Quote Generator: Wolfram Language
A simple WL app that generates quotes when the page is refreshed

## Environment and Setup
Make sure you have the [Wolfram Web Engine For Python](https://github.com/WolframResearch/WolframWebEngineForPython).

Create a project directory, then change into it:
```
mkdir quote-generator
cd quote-generator
```
Create the project structure as seen in this repo.

When it's all set up, change into the directory just above the project, and run the following:
```
python3 -m wolframwebengine quote-generator
```
## Data
Initial data is pulled from the [Stephen Wolfram Wikiquote page](https://en.wikiquote.org/wiki/Stephen_Wolfram). The script, `quotes/initial-quotes.wl`, extracts and imports the webpage data, returning it as a list.

Further cleaning is done and the data is exported to `quotes.json`. Additional quotes will be manually added to this file.
