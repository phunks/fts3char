

SqliteSubstringSearch (for Windows)
=====================
An open source tokenizer which supports fast substring search with sqlite FTS (full text search).

If you think `LIKE '%text%'` is too slow, this is the right solution for you.

## How to use it
* register the "character_tokenizer" module
* create a FTS table with character_tokenizer. For example:

    SELECT LOAD_EXTENSION("fts3char.dll");

    CREATE VIRTUAL TABLE Book USING fts3(name TEXT NOT NULL, author TEXT, tokenize=character);
* to search for a substring, use [phrase queries](http://www.sqlite.org/fts3.html#section_3). For example, to match strings such as "中国語", "韓国語", or "日本語", use:

    SELECT * FROM docs WHERE docs MATCH '"語"';

要するに SqliteSubstringSearch をDLLにしたもの

## References
* SqliteSubstringSearch
[https://github.com/haifengkao/SqliteSubstringSearch](https://github.com/haifengkao/SqliteSubstringSearch)

* SQLite3のFTSでトークナイザを実装する方法について調べてみた
[http://ytyaru.hatenablog.com/entry/2017/07/26/000000](http://ytyaru.hatenablog.com/entry/2017/07/26/000000)

* SQLite Full Text Search with MeCab
[http://reddog.s35.xrea.com/wiki/SQLite%20Full%20Text%20Search%20with%20MeCab.html](http://reddog.s35.xrea.com/wiki/SQLite%20Full%20Text%20Search%20with%20MeCab.html)