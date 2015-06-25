.class final Lorg/codehaus/jackson/map/deser/impl/e;
.super Lorg/codehaus/jackson/map/deser/impl/PropertyValue;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyValue;-><init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;)V

    .line 105
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/impl/e;->a:Ljava/lang/Object;

    .line 106
    return-void
.end method


# virtual methods
.method public assign(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 113
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/e;->a:Ljava/lang/Object;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/e;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
