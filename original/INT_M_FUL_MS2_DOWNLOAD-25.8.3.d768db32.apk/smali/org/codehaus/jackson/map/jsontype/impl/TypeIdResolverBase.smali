.class public abstract Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;


# instance fields
.field protected final _baseType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/type/TypeFactory;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    .line 20
    iput-object p2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 21
    return-void
.end method


# virtual methods
.method public idFromBaseType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
