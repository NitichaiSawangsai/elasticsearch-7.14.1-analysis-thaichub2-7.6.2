# Thai Analysis Plugin for Elasticsearch

The Thaichub2 (thai-chub-chub) Analysis Plugin integrates the Thai word segmentation modules into Elasticsearch.

elasticsearch version 7.14.1 install analysis-thaichub2

## Installation on Elasticsearch

- Download a release zip from the [release page](https://github.com/NitichaiSawangsai/elasticsearch-7.14.1-analysis-thaichub2-7.6.2/releases) matching your ES version (Now supports only version 7.14.1).

- Install with this command
```sh
./bin/elasticsearch-plugin install --batch file:///<path to zip>
```


# run local

```sh
$ brew install openjdk@13
$ export JAVA_HOME=$(/opt/homebrew/opt/openjdk@13/libexec/openjdk.jdk/Contents/Home)
  export PATH=$JAVA_HOME/bin:$PATH



$ yarn 
$ yarn export
$ docker compose up
```



## Sample Usage

Sample request

```
POST _analyze
{
    "analyzer": "thaichub2_analyzer",
    "text": "นมตรามะลิ"
}
```

Result

```
{
  "tokens" : [
    {
      "token" : "นม",
      "start_offset" : 0,
      "end_offset" : 2,
      "type" : "word",
      "position" : 0
    },
    {
      "token" : "ตรา",
      "start_offset" : 2,
      "end_offset" : 5,
      "type" : "word",
      "position" : 1
    },
    {
      "token" : "มะลิ",
      "start_offset" : 5,
      "end_offset" : 9,
      "type" : "word",
      "position" : 2
    }
  ]
}
```

## Thanks
- [Vee Satayamas](https://github.com/veer66) for the Thai word segmentation library.
- (https://github.com/tlefsad/elasticsearch-analysis-thaichub2) Thank you for this code snippet from the elasticsearch-analysis-thaichub2 repository.
 