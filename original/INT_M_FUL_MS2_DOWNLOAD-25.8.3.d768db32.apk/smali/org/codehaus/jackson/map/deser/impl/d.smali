.class final Lorg/codehaus/jackson/map/deser/impl/d;
.super Lorg/codehaus/jackson/map/deser/impl/PropertyValue;
.source "SourceFile"


# instance fields
.field final a:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyValue;-><init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;)V

    .line 81
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/impl/d;->a:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 82
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/impl/d;->b:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public assign(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/d;->a:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/d;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
