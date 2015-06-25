.class public Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->a:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->b:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->b:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 121
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->b:Landroid/content/Context;

    const v2, 0x7f0d03ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "##productId##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProductId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 128
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 130
    const-string v0, ""

    .line 131
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 136
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 114
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 116
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 117
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->fetchAndParseData()V

    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchAndParseData()V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->a()Ljava/lang/String;

    move-result-object v2

    .line 143
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/news/TripleDES;->decrypt([B)Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 146
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 148
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 149
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V

    .line 151
    const-string v3, "message"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 153
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v10, v2, :cond_3

    .line 154
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 156
    check-cast v2, Lorg/w3c/dom/Element;

    .line 158
    const-string v3, "title"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 159
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 160
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 162
    const-string v3, "body"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 163
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 164
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object v9, v4

    .line 166
    :goto_1
    const-string v4, "link"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 167
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 168
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object v8, v5

    .line 170
    :goto_2
    const-string v5, "date"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 171
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 172
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 174
    const-string v5, "startdate"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 175
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 176
    if-eqz v5, :cond_4

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object v7, v6

    .line 178
    :goto_3
    const-string v6, "enddate"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 179
    const/4 v14, 0x0

    invoke-interface {v6, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 180
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 182
    new-instance v14, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;

    invoke-direct {v14}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;-><init>()V

    .line 184
    const-string v15, "id"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->setId(J)V

    .line 185
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->setTitle(Ljava/lang/String;)V

    .line 186
    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v14, v2}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->setBody(Ljava/lang/String;)V

    .line 187
    if-nez v4, :cond_1

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v14, v2}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->setLink(Ljava/lang/String;)V

    .line 188
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v14, v2}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->setCreateDate(Ljava/util/Date;)V

    .line 189
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v14, v2}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->setEndDate(Ljava/util/Date;)V

    .line 190
    if-nez v5, :cond_2

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v14, v2}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->setStartDate(Ljava/util/Date;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_0

    .line 186
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 187
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 190
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->a(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_6

    .line 195
    :catch_0
    move-exception v2

    .line 196
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    :cond_3
    return-void

    :cond_4
    move-object v7, v6

    goto/16 :goto_3

    :cond_5
    move-object v8, v5

    goto/16 :goto_2

    :cond_6
    move-object v9, v4

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 246
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->pushNewsToUI()V

    .line 247
    return-void
.end method

.method public pushNewsToUI()V
    .locals 12

    .prologue
    const v5, 0x7f0d03c2

    .line 201
    new-instance v6, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->b:Landroid/content/Context;

    invoke-direct {v6, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLatestNewsId()J

    move-result-wide v2

    .line 205
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;

    .line 206
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getEndDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-gez v4, :cond_0

    .line 207
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getStartDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getStartDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-lez v4, :cond_0

    .line 208
    :cond_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getId()J

    move-result-wide v8

    cmp-long v4, v8, v2

    if-lez v4, :cond_0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->b:Landroid/content/Context;

    const v4, 0x7f0d03aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->b:Landroid/content/Context;

    const v9, 0x7f0d03ab

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "##productId##"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProductId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getLink()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getLink()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "<a href=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</a>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_4
    :goto_2
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->b:Landroid/content/Context;

    const/16 v4, 0x1d

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v3, v4, v1, v8, v9}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 224
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLatestNewsId()J

    move-result-wide v8

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getId()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-gez v1, :cond_3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getId()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLatestNewsId(J)V

    goto/16 :goto_1

    .line 219
    :cond_5
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 227
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 228
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 229
    const/4 v1, 0x4

    sget v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->NOTIFICATION_TEXT_NEWS_COUNT:I

    const v3, 0x7f020134

    const v4, 0x7f02012d

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    .line 232
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setNewsUnread(I)V

    .line 233
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->b:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 235
    :cond_7
    return-void
.end method
