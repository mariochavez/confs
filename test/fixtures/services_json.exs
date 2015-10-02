defmodule ServicesJson do
  def fixture(:confreaks_videos_list) do
    [
      %{"abstract" => "Lightning Talks by Many People\r\n\r\n00:00:00 - Vektra\r\n\r\n00:03:45 - Claudio Baccigalupo\r\n\r\n00:07:27 - Richard Schneeman\r\n\r\n00:11:58 - Shannon Skipper\r\n\r\n00:15:34 - Sean Culver\r\n\r\n00:20:36 - Steven Talcott Smith\r\n\r\n00:25:28 - Brandon Rice\r\n\r\n00:30:21 - Alex \r\n\r\n00:34:32 - Phillip Ante\r\n\r\n00:38:26 - Jeramy Couts\r\n\r\n00:42:32 - Ray Hightower\r\n\r\n00:46:33 - Tim Schmelmer\r\n\r\n00:53:05 - Aaron Patterson\r\n\r\n00:58:32 - Bobby Matson\r\n\r\n01:03:17 - Jason Clark\r\n\r\n01:08:25 - Chris Sexton\r\n\r\n01:10:52 - Jonathan Slate\r\n\r\n01:15:05 - Amanda Wagner\r\n\r\n01:20:44 - Costi\r\n\r\n01:27:03 - Colin Kelley\r\n\r\n01:32:01 - Michael Hartl\r\n\r\n01:36:42 - Pamela Assogba\r\n", "event" => "Ruby Conference 2014", "video_url" => "http://youtube.com/watch?v=GnUyjPGu5MQ", "image" => "http://s3-us-west-2.amazonaws.com/confreaks-tv3/production/videos/images/000/005/064/lightning_talks-original.png?1422378116", "license" => "cc-by-sa-3.0", "presenters" => [%{"aka_name" => "", "first_name" => "Various", "last_name" => "Presenters", "twitter_handle" => ""}], "recorded_at" => "2014-11-18T23:25:00.000Z", "video_source" => "http://confreaks.tv/videos/rubyconf2014-lightning-talks", "title" => "Lightning Talks"},
      %{"abstract" => "Messy code often begins with a simple 'if'. Continuing down that path is a road to ruin, but there's a simple way to avoid it. East-oriented Code is an approach that helps you follow Tell, Don't Ask. It guides you away from Feature Envy and toward better encapsulation. See before and after code and walk through easy to repeat steps that will make your Ruby programs better and easier to maintain.", "event" => "Ruby Conference 2014", "video_url" => "http://youtube.com/watch?v=kXcrClJcfm8", "image" => "http://s3-us-west-2.amazonaws.com/confreaks-tv3/production/videos/images/000/004/825/jim-gay-original.png?1422376673", "license" => "cc-by-sa-3.0", "presenters" => [%{"aka_name" => nil, "first_name" => "Jim", "last_name" => "Gay", "twitter_handle" => "saturnflyer"}], "recorded_at" => "2014-11-19T18:20:00.000Z", "video_source" => "http://confreaks.tv/videos/rubyconf2014-eastward-ho-a-clear-path-through-ruby-with-oo", "title" => "Eastward Ho! A Clear Path Through Ruby With OO"}
    ]
  end

  def fixture(:confreaks_events_json) do
    ~s(
      [
        {
          "id": 4825,
          "title": "Eastward Ho! A Clear Path Through Ruby With OO",
          "image": "http://s3-us-west-2.amazonaws.com/confreaks-tv3/production/videos/images/000/004/825/jim-gay-original.png?1422376673",
          "slug": "rubyconf2014-eastward-ho-a-clear-path-through-ruby-with-oo",
          "recorded_at": "2014-11-19T18:20:00.000Z",
          "event": "Ruby Conference 2014",
          "rating": "Everyone",
          "abstract": "Messy code often begins with a simple 'if'. Continuing down that path is a road to ruin, but there's a simple way to avoid it. East-oriented Code is an approach that helps you follow Tell, Don't Ask. It guides you away from Feature Envy and toward better encapsulation. See before and after code and walk through easy to repeat steps that will make your Ruby programs better and easier to maintain.",
          "post_date": "2014-12-02T07:00:00.000Z",
          "announce_date": null,
          "host": "youtube",
          "embed_code": "kXcrClJcfm8",
          "views": 10049,
          "views_last_7": 21,
          "views_last_30": 120,
          "license": "cc-by-sa-3.0",
          "attribution": null,
          "presenters": [
            {
              "first_name": "Jim",
              "last_name": "Gay",
              "aka_name": null,
              "twitter_handle": "saturnflyer"
            }
           ]
        },
        {
          "id": 5064,
          "title": "Lightning Talks",
          "image": "http://s3-us-west-2.amazonaws.com/confreaks-tv3/production/videos/images/000/005/064/lightning_talks-original.png?1422378116",
          "slug": "rubyconf2014-lightning-talks",
          "recorded_at": "2014-11-18T23:25:00.000Z",
          "event": "Ruby Conference 2014",
          "rating": "Everyone",
          "abstract": "Lightning Talks by Many People\r\n\r\n00:00:00 - Vektra\r\n\r\n00:03:45 - Claudio Baccigalupo\r\n\r\n00:07:27 - Richard Schneeman\r\n\r\n00:11:58 - Shannon Skipper\r\n\r\n00:15:34 - Sean Culver\r\n\r\n00:20:36 - Steven Talcott Smith\r\n\r\n00:25:28 - Brandon Rice\r\n\r\n00:30:21 - Alex \r\n\r\n00:34:32 - Phillip Ante\r\n\r\n00:38:26 - Jeramy Couts\r\n\r\n00:42:32 - Ray Hightower\r\n\r\n00:46:33 - Tim Schmelmer\r\n\r\n00:53:05 - Aaron Patterson\r\n\r\n00:58:32 - Bobby Matson\r\n\r\n01:03:17 - Jason Clark\r\n\r\n01:08:25 - Chris Sexton\r\n\r\n01:10:52 - Jonathan Slate\r\n\r\n01:15:05 - Amanda Wagner\r\n\r\n01:20:44 - Costi\r\n\r\n01:27:03 - Colin Kelley\r\n\r\n01:32:01 - Michael Hartl\r\n\r\n01:36:42 - Pamela Assogba\r\n",
          "post_date": "2014-12-21T08:00:00.000Z",
          "announce_date": null,
          "host": "youtube",
          "embed_code": "GnUyjPGu5MQ",
          "views": 518,
          "views_last_7": 2,
          "views_last_30": 16,
          "license": "cc-by-sa-3.0",
          "attribution": null,
          "presenters": [
             {
               "first_name": "Various",
               "last_name": "Presenters",
               "aka_name": "",
               "twitter_handle": ""
             }
          ]
        }
      ]
    )
  end

  def fixture(:youtube_videos_list) do
    [
      %{
      "abstract" => "Gray and Reuter define consistency as: “A transaction is a correct transformation of the state. The actions taken as a group do not violate any of the integrity constraints associated with the state. This requires that the transaction be a correct program.”\n\nLoosely translated, you should be happy with yourself. In your own opinion, you should be sane.\n\nThrough the years, this most ill defined property of the ACID transaction has been conflated with isolation and interpreted through the prism of read/write updates to an apparently centralized record oriented database. This suits systems developers that need a narrow definition to feel they can accomplish something. Unfortunately, it leaves many real world problems in the dust.\n\nIn this talk, Pat explores the models of consistency and the facades of reality used in practical systems.", 
      "event" => "React Conference", 
      "video_url" => "http://youtube.com/watch?v=EWSRbRUH7pg", 
      "image" => "https://i.ytimg.com/vi/EWSRbRUH7pg/maxresdefault.jpg", 
      "license" => "", 
      "presenters" => [], 
      "recorded_at" => "2014-12-17T09:12:31.000Z", 
      "video_source" => "http://youtube.com/watch?v=EWSRbRUH7pg", 
      "title" => "React San Fran 2014 : Pat Helland - Subjective Consistency"},
      %{
        "abstract" => "In order to operate 24/7 an application must embrace constant change and failure. This kind of resiliency is achievable through the application of reactive design principles. Learn the theory via real-world examples at Netflix along with some lessons learned the hard way in production. Topics of interest will include service-oriented architectures (microservices), cloud computing, where to put application state, hot deployments, bulk heading, circuit breakers, degrading gracefully, operational tooling and how application architecture affects resilience.", 
        "event" => "React Conference", 
        "video_url" => "http://youtube.com/watch?v=MEgyGamo79I", 
        "image" => "https://i.ytimg.com/vi/MEgyGamo79I/maxresdefault.jpg", 
        "license" => "", 
        "presenters" => [], 
        "recorded_at" => "2014-12-17T09:13:20.000Z", 
        "video_source" => "http://youtube.com/watch?v=MEgyGamo79I", 
        "title" => "React San Fran 2014 : Ben Christensen - Resilient by Design"}
    ]
  end

  def fixture(:youtube_events_json) do
    ~s(
{
 "kind": "youtube#playlistItemListResponse",
 "etag": "YxyobdYztCvdjXOUqpUttvF39GM/vLCoKBvCQVXcDdwMffIeQhndUQs",
 "nextPageToken": "CAIQAA",
 "pageInfo": {
  "totalResults": 8,
  "resultsPerPage": 2
 },
 "items": [
  {
   "kind": "youtube#playlistItem",
   "etag": "YxyobdYztCvdjXOUqpUttvF39GM/g96Kfx2QoLtebpWF-o24d3zjO3I",
   "id": "PLumABYVj_vtqdyUKAQzcsF-SWHl4Xi-2Rn3emEhiXuGQ",
   "snippet": {
    "publishedAt": "2014-12-17T09:12:31.000Z",
    "channelId": "UC5oW2NYbyctXP3fvPICxMMg",
    "title": "React San Fran 2014 : Pat Helland - Subjective Consistency",
    "description": "Gray and Reuter define consistency as: “A transaction is a correct transformation of the state. The actions taken as a group do not violate any of the integrity constraints associated with the state. This requires that the transaction be a correct program.”\n\nLoosely translated, you should be happy with yourself. In your own opinion, you should be sane.\n\nThrough the years, this most ill defined property of the ACID transaction has been conflated with isolation and interpreted through the prism of read/write updates to an apparently centralized record oriented database. This suits systems developers that need a narrow definition to feel they can accomplish something. Unfortunately, it leaves many real world problems in the dust.\n\nIn this talk, Pat explores the models of consistency and the facades of reality used in practical systems.",
    "thumbnails": {
     "default": {
      "url": "https://i.ytimg.com/vi/EWSRbRUH7pg/default.jpg",
      "width": 120,
      "height": 90
     },
     "medium": {
      "url": "https://i.ytimg.com/vi/EWSRbRUH7pg/mqdefault.jpg",
      "width": 320,
      "height": 180
     },
     "high": {
      "url": "https://i.ytimg.com/vi/EWSRbRUH7pg/hqdefault.jpg",
      "width": 480,
      "height": 360
     },
     "standard": {
      "url": "https://i.ytimg.com/vi/EWSRbRUH7pg/sddefault.jpg",
      "width": 640,
      "height": 480
     },
     "maxres": {
      "url": "https://i.ytimg.com/vi/EWSRbRUH7pg/maxresdefault.jpg",
      "width": 1280,
      "height": 720
     }
    },
    "channelTitle": "React Conference",
    "playlistId": "PLSD48HvrE7-bo9rWaCLjxAocrxREREHnt",
    "position": 0,
    "resourceId": {
     "kind": "youtube#video",
     "videoId": "EWSRbRUH7pg"
    }
   },
   "status": {
    "privacyStatus": "public"
   }
  },
  {
   "kind": "youtube#playlistItem",
   "etag": "YxyobdYztCvdjXOUqpUttvF39GM/bTZUUFcrTteiHkIvfHwzl3y3LZ8",
   "id": "PLumABYVj_vtqdyUKAQzcsF9uG0YfHLQUCQyU2HXlaCZ8",
   "snippet": {
    "publishedAt": "2014-12-17T09:13:20.000Z",
    "channelId": "UC5oW2NYbyctXP3fvPICxMMg",
    "title": "React San Fran 2014 : Ben Christensen - Resilient by Design",
    "description": "In order to operate 24/7 an application must embrace constant change and failure. This kind of resiliency is achievable through the application of reactive design principles. Learn the theory via real-world examples at Netflix along with some lessons learned the hard way in production. Topics of interest will include service-oriented architectures \(microservices\), cloud computing, where to put application state, hot deployments, bulk heading, circuit breakers, degrading gracefully, operational tooling and how application architecture affects resilience.",
    "thumbnails": {
     "default": {
      "url": "https://i.ytimg.com/vi/MEgyGamo79I/default.jpg",
      "width": 120,
      "height": 90
     },
     "medium": {
      "url": "https://i.ytimg.com/vi/MEgyGamo79I/mqdefault.jpg",
      "width": 320,
      "height": 180
     },
     "high": {
      "url": "https://i.ytimg.com/vi/MEgyGamo79I/hqdefault.jpg",
      "width": 480,
      "height": 360
     },
     "standard": {
      "url": "https://i.ytimg.com/vi/MEgyGamo79I/sddefault.jpg",
      "width": 640,
      "height": 480
     },
     "maxres": {
      "url": "https://i.ytimg.com/vi/MEgyGamo79I/maxresdefault.jpg",
      "width": 1280,
      "height": 720
     }
    },
    "channelTitle": "React Conference",
    "playlistId": "PLSD48HvrE7-bo9rWaCLjxAocrxREREHnt",
    "position": 1,
    "resourceId": {
     "kind": "youtube#video",
     "videoId": "MEgyGamo79I"
    }
   },
   "status": {
    "privacyStatus": "public"
   }
  }
 ]
}
    )
  end
end
