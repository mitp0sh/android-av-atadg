.class public Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codehaus/jackson/map/deser/impl/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->a:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addExternal(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->a:Ljava/util/ArrayList;

    new-instance v2, Lorg/codehaus/jackson/map/deser/impl/c;

    invoke-direct {v2, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/c;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public build()Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    new-instance v1, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/codehaus/jackson/map/deser/impl/c;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/deser/impl/c;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->b:Ljava/util/HashMap;

    invoke-direct {v1, v0, v2, v3, v3}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;-><init>([Lorg/codehaus/jackson/map/deser/impl/c;Ljava/util/HashMap;[Ljava/lang/String;[Lorg/codehaus/jackson/util/TokenBuffer;)V

    return-object v1
.end method
