.class final Lorg/codehaus/jackson/map/deser/std/u;
.super Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 299
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    .line 300
    return-void
.end method


# virtual methods
.method public synthetic _parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/u;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p2, p1}, Lorg/codehaus/jackson/map/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
