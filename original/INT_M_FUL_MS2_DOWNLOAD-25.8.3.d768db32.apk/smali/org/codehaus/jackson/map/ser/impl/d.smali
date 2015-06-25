.class final Lorg/codehaus/jackson/map/ser/impl/d;
.super Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "SourceFile"


# instance fields
.field private final a:[Lorg/codehaus/jackson/map/ser/impl/f;


# direct methods
.method public constructor <init>([Lorg/codehaus/jackson/map/ser/impl/f;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    .line 201
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/d;->a:[Lorg/codehaus/jackson/map/ser/impl/f;

    .line 202
    return-void
.end method


# virtual methods
.method public newWith(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/d;->a:[Lorg/codehaus/jackson/map/ser/impl/f;

    array-length v0, v0

    .line 221
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 228
    :goto_0
    return-object p0

    .line 225
    :cond_0
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/codehaus/jackson/map/ser/impl/f;

    .line 226
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/impl/d;->a:[Lorg/codehaus/jackson/map/ser/impl/f;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    new-instance v2, Lorg/codehaus/jackson/map/ser/impl/f;

    invoke-direct {v2, p1, p2}, Lorg/codehaus/jackson/map/ser/impl/f;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    aput-object v2, v1, v0

    .line 228
    new-instance p0, Lorg/codehaus/jackson/map/ser/impl/d;

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/map/ser/impl/d;-><init>([Lorg/codehaus/jackson/map/ser/impl/f;)V

    goto :goto_0
.end method

.method public serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/d;->a:[Lorg/codehaus/jackson/map/ser/impl/f;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 208
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/impl/d;->a:[Lorg/codehaus/jackson/map/ser/impl/f;

    aget-object v2, v2, v0

    .line 209
    iget-object v3, v2, Lorg/codehaus/jackson/map/ser/impl/f;->a:Ljava/lang/Class;

    if-ne v3, p1, :cond_0

    .line 210
    iget-object v0, v2, Lorg/codehaus/jackson/map/ser/impl/f;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 213
    :goto_1
    return-object v0

    .line 207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
