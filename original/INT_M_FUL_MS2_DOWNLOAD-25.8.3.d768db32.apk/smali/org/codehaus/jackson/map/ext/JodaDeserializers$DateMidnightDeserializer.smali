.class public Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateMidnightDeserializer;
.super Lorg/codehaus/jackson/map/ext/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ext/b",
        "<",
        "Lorg/joda/time/DateMidnight;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 197
    const-class v0, Lorg/joda/time/DateMidnight;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ext/b;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateMidnightDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/joda/time/DateMidnight;
    .locals 5

    .prologue
    .line 204
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 206
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v1

    .line 207
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 208
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v2

    .line 209
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 210
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v3

    .line 211
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_0

    .line 212
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    const-string v1, "after DateMidnight ints"

    invoke-virtual {p2, p1, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 214
    :cond_0
    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/DateMidnight;-><init>(III)V

    .line 224
    :goto_0
    return-object v0

    .line 216
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/map/ext/a;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    const-string v1, "expected JSON Array, Number or String"

    invoke-virtual {p2, p1, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 218
    :pswitch_0
    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/joda/time/DateMidnight;-><init>(J)V

    goto :goto_0

    .line 220
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ext/JodaDeserializers$DateMidnightDeserializer;->parseLocal(Lorg/codehaus/jackson/JsonParser;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 221
    if-nez v0, :cond_2

    .line 222
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toDateMidnight()Lorg/joda/time/DateMidnight;

    move-result-object v0

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method