.class final Lorg/codehaus/jackson/map/deser/std/aa;
.super Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 141
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic _parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/aa;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Short;
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/deser/std/aa;->_parseInt(Ljava/lang/String;)I

    move-result v0

    .line 147
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/aa;->_keyClass:Ljava/lang/Class;

    const-string v1, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v0, p1, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 150
    :cond_1
    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method
