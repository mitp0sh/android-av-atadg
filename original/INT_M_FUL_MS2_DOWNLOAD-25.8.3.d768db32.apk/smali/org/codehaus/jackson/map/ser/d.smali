.class final Lorg/codehaus/jackson/map/ser/d;
.super Lorg/codehaus/jackson/map/JsonSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonSerializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/TypeSerializer;

.field protected final b:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 826
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 827
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/d;->a:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 828
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/d;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 829
    return-void
.end method


# virtual methods
.method public handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/d;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/d;->a:Lorg/codehaus/jackson/map/TypeSerializer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    .line 836
    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/d;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    .line 847
    return-void
.end method
