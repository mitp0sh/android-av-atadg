.class public Lorg/codehaus/jackson/map/deser/AbstractDeserializer;
.super Lorg/codehaus/jackson/map/JsonDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _acceptBoolean:Z

.field protected final _acceptDouble:Z

.field protected final _acceptInt:Z

.field protected final _acceptString:Z

.field protected final _baseType:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonDeserializer;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    .line 35
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 36
    const-class v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_acceptString:Z

    .line 37
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_acceptBoolean:Z

    .line 38
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_acceptInt:Z

    .line 39
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v3, v0, :cond_2

    const-class v0, Ljava/lang/Double;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_acceptDouble:Z

    .line 40
    return-void

    :cond_4
    move v0, v1

    .line 37
    goto :goto_0

    :cond_5
    move v0, v1

    .line 38
    goto :goto_1
.end method


# virtual methods
.method protected _deserializeIfNatural(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lorg/codehaus/jackson/map/deser/a;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_acceptString:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_acceptInt:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_2
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_acceptDouble:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_3
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_acceptBoolean:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 95
    :pswitch_4
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_acceptBoolean:Z

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "abstract types can only be instantiated with additional type information"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;->_deserializeIfNatural(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
