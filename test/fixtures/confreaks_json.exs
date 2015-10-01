defmodule ConfreaksJson do
  def fixture(:videos_list) do
    [
      %{"abstract" => "Lightning Talks by Many People\r\n\r\n00:00:00 - Vektra\r\n\r\n00:03:45 - Claudio Baccigalupo\r\n\r\n00:07:27 - Richard Schneeman\r\n\r\n00:11:58 - Shannon Skipper\r\n\r\n00:15:34 - Sean Culver\r\n\r\n00:20:36 - Steven Talcott Smith\r\n\r\n00:25:28 - Brandon Rice\r\n\r\n00:30:21 - Alex \r\n\r\n00:34:32 - Phillip Ante\r\n\r\n00:38:26 - Jeramy Couts\r\n\r\n00:42:32 - Ray Hightower\r\n\r\n00:46:33 - Tim Schmelmer\r\n\r\n00:53:05 - Aaron Patterson\r\n\r\n00:58:32 - Bobby Matson\r\n\r\n01:03:17 - Jason Clark\r\n\r\n01:08:25 - Chris Sexton\r\n\r\n01:10:52 - Jonathan Slate\r\n\r\n01:15:05 - Amanda Wagner\r\n\r\n01:20:44 - Costi\r\n\r\n01:27:03 - Colin Kelley\r\n\r\n01:32:01 - Michael Hartl\r\n\r\n01:36:42 - Pamela Assogba\r\n", "event" => "Ruby Conference 2014", "video_url" => "http://youtube.com/watch?v=GnUyjPGu5MQ", "image" => "http://s3-us-west-2.amazonaws.com/confreaks-tv3/production/videos/images/000/005/064/lightning_talks-original.png?1422378116", "license" => "cc-by-sa-3.0", "presenters" => [%{"aka_name" => "", "first_name" => "Various", "last_name" => "Presenters", "twitter_handle" => ""}], "recorded_at" => "2014-11-18T23:25:00.000Z", "video_source" => "http://confreaks.tv/videos/rubyconf2014-lightning-talks", "title" => "Lightning Talks"},
      %{"abstract" => "Messy code often begins with a simple 'if'. Continuing down that path is a road to ruin, but there's a simple way to avoid it. East-oriented Code is an approach that helps you follow Tell, Don't Ask. It guides you away from Feature Envy and toward better encapsulation. See before and after code and walk through easy to repeat steps that will make your Ruby programs better and easier to maintain.", "event" => "Ruby Conference 2014", "video_url" => "http://youtube.com/watch?v=kXcrClJcfm8", "image" => "http://s3-us-west-2.amazonaws.com/confreaks-tv3/production/videos/images/000/004/825/jim-gay-original.png?1422376673", "license" => "cc-by-sa-3.0", "presenters" => [%{"aka_name" => nil, "first_name" => "Jim", "last_name" => "Gay", "twitter_handle" => "saturnflyer"}], "recorded_at" => "2014-11-19T18:20:00.000Z", "video_source" => "http://confreaks.tv/videos/rubyconf2014-eastward-ho-a-clear-path-through-ruby-with-oo", "title" => "Eastward Ho! A Clear Path Through Ruby With OO"}
    ]
  end

  def fixture(:events_json) do
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
end
