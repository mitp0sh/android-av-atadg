.class final Lorg/codehaus/jackson/map/deser/std/d;
.super Lorg/codehaus/jackson/map/deser/std/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/a",
        "<",
        "Lorg/codehaus/jackson/node/ArrayNode;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lorg/codehaus/jackson/map/deser/std/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/d;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/d;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/deser/std/d;->a:Lorg/codehaus/jackson/map/deser/std/d;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lorg/codehaus/jackson/node/ArrayNode;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/a;-><init>(Ljava/lang/Class;)V

    .line 105
    return-void
.end method

.method public static a()Lorg/codehaus/jackson/map/deser/std/d;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lorg/codehaus/jackson/map/deser/std/d;->a:Lorg/codehaus/jackson/map/deser/std/d;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/std/d;->deserializeArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    const-class v0, Lorg/codehaus/jackson/node/ArrayNode;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/d;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method
