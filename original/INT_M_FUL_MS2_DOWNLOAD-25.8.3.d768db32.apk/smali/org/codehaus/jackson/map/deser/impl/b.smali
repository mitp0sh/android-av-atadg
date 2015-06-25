.class final Lorg/codehaus/jackson/map/deser/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Lorg/codehaus/jackson/map/deser/impl/a;

.field private b:Lorg/codehaus/jackson/map/deser/impl/a;

.field private c:I


# direct methods
.method public constructor <init>([Lorg/codehaus/jackson/map/deser/impl/a;)V
    .locals 4

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/b;->a:[Lorg/codehaus/jackson/map/deser/impl/a;

    .line 220
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/b;->a:[Lorg/codehaus/jackson/map/deser/impl/a;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 222
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/impl/b;->a:[Lorg/codehaus/jackson/map/deser/impl/a;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v3, v1

    .line 223
    if-eqz v1, :cond_0

    .line 224
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/b;->b:Lorg/codehaus/jackson/map/deser/impl/a;

    .line 228
    :goto_1
    iput v0, p0, Lorg/codehaus/jackson/map/deser/impl/b;->c:I

    .line 229
    return-void

    :cond_0
    move v1, v0

    .line 227
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 4

    .prologue
    .line 239
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/b;->b:Lorg/codehaus/jackson/map/deser/impl/a;

    .line 240
    if-nez v1, :cond_0

    .line 241
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 244
    :cond_0
    iget-object v0, v1, Lorg/codehaus/jackson/map/deser/impl/a;->a:Lorg/codehaus/jackson/map/deser/impl/a;

    .line 245
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lorg/codehaus/jackson/map/deser/impl/b;->c:I

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/impl/b;->a:[Lorg/codehaus/jackson/map/deser/impl/a;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 246
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/b;->a:[Lorg/codehaus/jackson/map/deser/impl/a;

    iget v2, p0, Lorg/codehaus/jackson/map/deser/impl/b;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/map/deser/impl/b;->c:I

    aget-object v0, v0, v2

    goto :goto_0

    .line 248
    :cond_1
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/b;->b:Lorg/codehaus/jackson/map/deser/impl/a;

    .line 249
    iget-object v0, v1, Lorg/codehaus/jackson/map/deser/impl/a;->c:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/b;->b:Lorg/codehaus/jackson/map/deser/impl/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/impl/b;->a()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
