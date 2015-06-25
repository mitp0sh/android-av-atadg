.class public Lorg/codehaus/jackson/map/deser/std/FromStringDeserializer$CharsetDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/FromStringDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/FromStringDeserializer",
        "<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 238
    const-class v0, Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/FromStringDeserializer$CharsetDeserializer;->_deserialize(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method protected _deserialize(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 244
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method
